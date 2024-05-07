<?php
include_once 'db_con.php';
include "../includes/sessions.php";

    $productId = $_GET['product_id'];
    
    // Function to retrieve title tag and meta description for a product
    function getProductMetadata($productId) {
        global $connectDB;
        $sql = "SELECT title_tag, meta_description FROM tbl_products WHERE product_id = '$productId'";
        $result = mysqli_query($connectDB, $sql);
        if ($row = mysqli_fetch_assoc($result)) {
            return $row;
        } else {
            // Return default values or handle as needed
            return array(
                'title_tag' => 'Default Title',
                'meta_description' => 'Default Meta Description'
            );
        }
    }
    
    // Function to update or insert product metadata (title tag and meta description)
    function updateProductMetadata($productId, $titleTag, $metaDescription) {
        global $connectDB;
        $sql = "UPDATE tbl_products SET title_tag = ?, meta_description = ? WHERE product_id = ?";
        $stmt = mysqli_prepare($connectDB, $sql);
        mysqli_stmt_bind_param($stmt, "sss", $titleTag, $metaDescription, $productId);
        mysqli_stmt_execute($stmt);
    }
    
    // Get current product metadata
    $productMetadata = getProductMetadata($productId);
    $titleTag = $productMetadata['title_tag'];
    $metaDescription = $productMetadata['meta_description'];
    
    // Handle form submission for updating product metadata
if (isset($_POST['updateMetadata'])) {
    $newTitleTag = $_POST['title_tag'];
    $newMetaDescription = $_POST['meta_description'];
    
    // Update product metadata
    $success = updateProductMetadata($productId, $newTitleTag, $newMetaDescription);
    
    if ($success) {
        $_SESSION['successmessage'] = "Meta Description and Title Tag updated successfully";
    } else {
        $_SESSION['errormessage'] = "Failed to update Meta Description and Title Tag";
    }
    // Redirect back to product details page
    header("Location: ../../secure/product-details?q=$productId");
}

if (isset($_POST['newProduct'])) {
    $pid = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    $pid = str_shuffle($pid);
    $pid = substr($pid, 3, 13);
    $title = strtolower($_POST['name']);
    $cat = strtolower($_POST['cat']);
    $sub = strtolower($_POST['sub']);
    $price = $_POST['price'];
    $stock = $_POST['stock'];
    $weight = $_POST['weight'];
    $details = $_POST['details'];
    
    // Function to truncate the product details to a maximum number of characters
    function truncateDetails($details, $maxCharacters) {
        if (strlen($details) > $maxCharacters) {
            // If the length of details exceeds the maximum characters, truncate it
            return substr($details, 0, $maxCharacters);
        } else {
            return $details;
        }
    }

    // When inserting or updating a new product
    $details = $_POST['details'];
    $maxCharacters = 200000000000000; // Define the maximum number of characters to display
    $truncatedDetails = truncateDetails($details, $maxCharacters);
    
    // Now you can use the $truncatedDetails variable in your SQL query for insertion or update



    $sql = "INSERT INTO tbl_products(product_id,product_name,cat_id,sub_id,price,stock,`weight`,details) VALUES(?,?,?,?,?,?,?,?)";
    // Initialize Database Connection
    $stmt = mysqli_stmt_init($connectDB);
    // Prepare SQL statement
    mysqli_stmt_prepare($stmt, $sql);
    // Bind parameters to the placeholder
    mysqli_stmt_bind_param($stmt, "ssssssss", $pid, $title, $cat, $sub, $price, $stock, $weight, $details);
    // Execute statement
    if (mysqli_stmt_execute($stmt)) {
        $title = ucwords($title);
        $_SESSION['successmessage'] =  "$title added successfully";
        header("Location: ../../secure/product-details?q=$pid");
    } else {
        $_SESSION['errormessage'] =  "Something went wrong";
        header("Location: ../../secure/products");
    }
} elseif (isset($_POST['productImg'])) {
    $rand = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    $rand = str_shuffle($rand);
    $rand = substr($rand, 3, 13) . '-' . substr($rand, 15, 20);
    $pid = $_POST['pid'];
    $file = $_FILES['file'];

    $sql = "SELECT * FROM product_image WHERE product_id = '$pid'";
    $query = mysqli_query($connectDB, $sql);

    if (mysqli_num_rows($query) >= 10) {
        $_SESSION['errormessage'] =  "Max number of image: 10";
        header("Location: ../../secure/product-details?q=$pid");
    } else {
        // Get all the values from the file associative array
        $fileName = $file['name'];
        $fileSize = $file['size'];
        $fileError = $file['error'];
        $fileTempLoc = $file['tmp_name'];

        $fileExt = explode('.', $fileName);
        $fileActualExt = strtolower(end($fileExt));

        // Files that would be allowed
        $allowed = array('jpg', 'png', 'jpeg', 'tiff', 'swf', 'jpeg2000', 'webp');

        // Check if the file extension is allowed
        if (in_array($fileActualExt, $allowed)) {
            // check the file size
            if ($fileSize < 10000000) {
                //  check for errors
                if ($fileError === 0) {
                    // Create a new name for our file
                    $fileNewName = $rand . "." . $fileActualExt;
                    $location = "../img/products/";
                    $move = move_uploaded_file($fileTempLoc, $location . $fileNewName);
                    if ($move) {

                        $sql = "INSERT INTO product_image(product_id,product_image) VALUES(?,?)";
                        // Initialize Database Connection
                        $stmt = mysqli_stmt_init($connectDB);
                        // Prepare SQL statement
                        mysqli_stmt_prepare($stmt, $sql);
                        // Bind parameters to the placeholder
                        mysqli_stmt_bind_param($stmt, "ss", $pid, $fileNewName);
                        // Execute statement
                        if (mysqli_stmt_execute($stmt)) {
                            $_SESSION['successmessage'] =  "Image added successfully";
                            header("Location: ../../secure/product-details?q=$pid");
                        } else {
                            $_SESSION['errormessage'] =  "Something went wrong";
                            header("Location: ../../secure/product-details?q=$pid");
                        }
                    } else {
                        $_SESSION['errormessage'] =  "Something went wrong";
                        header("Location: ../../secure/product-details?q=$pid");
                    }
                } else {
                    $_SESSION['errormessage'] =  "There is an error with your file";
                    header("Location: ../../secure/product-details?q=$pid");
                }
            } else {
                $_SESSION['errormessage'] =  "This file is too large";
                header("Location: ../../secure/product-details?q=$pid");
            }
        } else {
            $_SESSION['errormessage'] =  "Please upload a file that is either jpg,png or jpeg";
            header("Location: ../../secure/product-details?q=$pid");
        }
    }
} elseif (isset($_POST['updateProduct'])) {
    $pid = $_POST['pid'];
    $title = strtolower($_POST['name']);
    $cat = strtolower($_POST['cat']);
    $sub = strtolower($_POST['sub']);
    $price = $_POST['price'];
    $stock = $_POST['stock'];
    $weight = $_POST['weight'];
    $details = addslashes($_POST['details']);

    function updateDetails($check, $connnection, $column, $value, $id)
    {
        if (!empty($check)) {
            $sql = "UPDATE tbl_products SET $column = '$value' WHERE product_id = '$id'";
            $query = mysqli_query($connnection, $sql);
            if ($query) {
                $_SESSION['successmessage'] =  "Updated successfully";
                header("Location: ../../secure/product-details?q=$id");
            } else {
                $_SESSION['errormessage'] =  "Something went wrong";
                header("Location: ../../secure/product-details?q=$id");
            }
        } else {
            header("Location: ../../secure/product-details?q=$id");
        }
    }

    // Title
    updateDetails($title, $connectDB, 'product_name', $title, $pid);
    // Price
    updateDetails($price, $connectDB, 'price', $price, $pid);
    // Stock
    updateDetails($stock, $connectDB, 'stock', $stock, $pid);
    // Weight
    updateDetails($weight, $connectDB, 'weight', $weight, $pid);
    // Details
    updateDetails($details, $connectDB, 'details', $details, $pid);
    // Category and Sub-Category
    if (!empty($cat)) {
        if (!empty($sub)) {
            $sql = "UPDATE tbl_products SET cat_id = '$cat',sub_id = '$sub' WHERE product_id = '$pid'";
            $query = mysqli_query($connectDB, $sql);
            if ($query) {
                $_SESSION['successmessage'] =  "Updated successfully";
                header("Location: ../../secure/product-details?q=$pid");
            } else {
                $_SESSION['errormessage'] =  "Something went wrong";
                header("Location: ../../secure/product-details?q=$pid");
            }
        } else {
            $_SESSION['errormessage'] =  "Please Select a Sub-Category";
            header("Location: ../../secure/product-details?q=$pid");
        }
    } else {
        header("Location: ../../secure/product-details?q=$pid");
    }
} elseif (isset($_GET['delImg'])) {
    $id = $_GET['delImg'];
    $img = $_GET['imgName'];
    $pid = $_GET['pid'];

    $sql = "DELETE FROM product_image WHERE _id = '$id'";
    $query = mysqli_query($connectDB, $sql);
    if ($query) {
        unlink('../img/products/' . $img);
        $_SESSION['successmessage'] =  "Deleted successfully";
        header("Location: ../../secure/product-details?q=$pid");
    } else {
        $_SESSION['errormessage'] =  "Something went wrong";
        header("Location: ../../secure/product-details?q=$pid");
    }
}
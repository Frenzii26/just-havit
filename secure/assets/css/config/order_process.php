<?php
include_once 'db_con.php';
include "../includes/sessions.php";
require_once "send-mail.php";


if (isset($_GET['addCart'])) {
    if (!isset($_SESSION['id'])) {
        header('Location: ../../login-signin');
    } else {
        $add = $_GET['addCart'];
        $user = $_SESSION['id'];
        $quantity = "1";
        $status = "0";
        // echo $_SERVER['HTTP_REFERER'];

        $productPrice = getName($connectDB, "price", "tbl_products", "product_id", $add);

        $total = intval($productPrice) * intval($quantity);
        $total = strval($total);


        $sql = "SELECT * FROM tbl_cart WHERE user = '$user' AND product_id = '$add' AND order_status = '0' ORDER BY _id DESC";
        $query = mysqli_query($connectDB, $sql);

        if (mysqli_num_rows($query) > 0) {
            $row = mysqli_fetch_assoc($query);

            $quantity = intval($row['quantity']);
            $quantity  += 1;

            $total = intval($productPrice) * intval($quantity);
            $total = strval($total);
            $sql = "UPDATE tbl_cart SET quantity = '$quantity', total = '$total' WHERE user = '$user' AND product_id = '$add' AND order_status = '0'";
            $query = mysqli_query($connectDB, $sql);
            if ($query) {
                $_SESSION['successmessage'] =  "Added to Cart";
                header("Location:" . $_SERVER['HTTP_REFERER']);
            } else {
                $_SESSION['errormessage'] =  "Failed to add to Cart";
                header("Location:" . $_SERVER['HTTP_REFERER']);
            }
        } else {
            $sql = "INSERT INTO tbl_cart(user,product_id,quantity,total,order_status) VALUES(?,?,?,?,?)";
            // Initialize Database Connection
            $stmt = mysqli_stmt_init($connectDB);
            // Prepare SQL statement
            mysqli_stmt_prepare($stmt, $sql);
            // Bind parameters to the placeholder
            mysqli_stmt_bind_param($stmt, "sssss", $user, $add, $quantity, $total, $status);
            // Execute statement
            if (mysqli_stmt_execute($stmt)) {
                $_SESSION['successmessage'] =  "Added to Cart";
                header("Location:" . $_SERVER['HTTP_REFERER']);
            } else {
                $_SESSION['errormessage'] =  "Failed to add to Cart";
                header("Location:" . $_SERVER['HTTP_REFERER']);
            }
        }
    }
} elseif (isset($_POST['addToCart'])) {
    if (!isset($_SESSION['id'])) {
        header('Location: ../../login-signin');
    } else {
        $add = $_POST['product'];
        $user = $_SESSION['id'];
        $quantity = $_POST['qty'];
        $status = "0";
        // echo $_SERVER['HTTP_REFERER'];

        $productPrice = getName($connectDB, "price", "tbl_products", "product_id", $add);

        $total = intval($productPrice) * intval($quantity);
        $total = strval($total);


        $sql = "SELECT * FROM tbl_cart WHERE user = '$user' AND product_id = '$add' AND order_status = '0' ORDER BY _id DESC";
        $query = mysqli_query($connectDB, $sql);

        if (mysqli_num_rows($query) > 0) {
            $row = mysqli_fetch_assoc($query);


            $quantity = intval($row['quantity']);
            $quantity  += 1;

            $total = intval($productPrice) * intval($quantity);
            $total = strval($total);
            $sql = "UPDATE tbl_cart SET quantity = '$quantity', total = '$total' WHERE user = '$user' AND product_id = '$add' AND order_status = '0'";
            $query = mysqli_query($connectDB, $sql);
            if ($query) {
                $_SESSION['successmessage'] =  "Added to Cart";
                header("Location:" . $_SERVER['HTTP_REFERER']);
            } else {
                $_SESSION['errormessage'] =  "Failed to add to Cart";
                header("Location:" . $_SERVER['HTTP_REFERER']);
            }
        } else {
            $sql = "INSERT INTO tbl_cart(user,product_id,quantity,total,order_status) VALUES(?,?,?,?,?)";
            // Initialize Database Connection
            $stmt = mysqli_stmt_init($connectDB);
            // Prepare SQL statement
            mysqli_stmt_prepare($stmt, $sql);
            // Bind parameters to the placeholder
            mysqli_stmt_bind_param($stmt, "sssss", $user, $add, $quantity, $total, $status);
            // Execute statement
            if (mysqli_stmt_execute($stmt)) {
                $_SESSION['successmessage'] =  "Added to Cart";
                header("Location:" . $_SERVER['HTTP_REFERER']);
            } else {
                $_SESSION['errormessage'] =  "Failed to add to Cart";
                header("Location:" . $_SERVER['HTTP_REFERER']);
            }
        }
    }
} elseif (isset($_GET['addQty'])) {
    $id = intval($_GET['addQty']);
    $qty = intval($_GET['qty']);
    $user = $_GET['u'];

    $sql = "SELECT * FROM tbl_cart WHERE _id = '$id'";
    $query = mysqli_query($connectDB, $sql);
    $row = mysqli_fetch_assoc($query);
    $reQty = intval($row['quantity']);
    $pid = $row['product_id'];


    $sql = "SELECT * FROM tbl_products WHERE product_id = '$pid'";
    $query = mysqli_query($connectDB, $sql);
    $row = mysqli_fetch_assoc($query);
    $price = $row['price'];
    $stock = intval($row['stock']);


    $reQty += 1;

    $subTotal = intval($price) * $reQty;

    $sql = "UPDATE tbl_cart SET quantity = '$reQty', total = '$subTotal' WHERE _id = '$id'";
    $query = mysqli_query($connectDB, $sql);

    //Get Grand total 
    $sql = "SELECT SUM(total) AS grand_total FROM tbl_cart WHERE user = '$user' AND order_status = '0'";
    $query = mysqli_query($connectDB, $sql);
    $row = mysqli_fetch_assoc($query);

    $grandtotal = $row['grand_total'];
    $return = array(
        "qty" => $reQty,
        "subTotal" => $subTotal,
        "grandTotal" => $grandtotal,
        "stock" => $stock,
    );
    $return = json_encode($return);
    echo $return;
} elseif (isset($_GET['subQty'])) {
    $id = intval($_GET['subQty']);
    $qty = intval($_GET['qty']);
    $user = $_GET['u'];

    $sql = "SELECT * FROM tbl_cart WHERE _id = '$id'";
    $query = mysqli_query($connectDB, $sql);
    $row = mysqli_fetch_assoc($query);
    $reQty = intval($row['quantity']);
    $pid = $row['product_id'];


    $sql = "SELECT * FROM tbl_products WHERE product_id = '$pid'";
    $query = mysqli_query($connectDB, $sql);
    $row = mysqli_fetch_assoc($query);
    $price = $row['price'];


    $reQty -= 1;

    $subTotal = intval($price) * $reQty;

    $sql = "UPDATE tbl_cart SET quantity = '$reQty', total = '$subTotal' WHERE _id = '$id'";
    $query = mysqli_query($connectDB, $sql);

    //Get Grand total 
    $sql = "SELECT SUM(total) AS grand_total FROM tbl_cart WHERE user = '$user' AND order_status = '0'";
    $query = mysqli_query($connectDB, $sql);
    $row = mysqli_fetch_assoc($query);

    $grandtotal = $row['grand_total'];
    $return = array(
        "qty" => $reQty,
        "subTotal" => $subTotal,
        "grandTotal" => $grandtotal
    );
    $return = json_encode($return);
    echo $return;
} elseif (isset($_GET['removeCart'])) {
    $id = $_GET['removeCart'];

    $sql = "DELETE FROM tbl_cart WHERE _id = '$id'";
    $query = mysqli_query($connectDB, $sql);
    if ($query) {
        $_SESSION['successmessage'] =  "Item has been removed from cart";
        header("Location:" . $_SERVER['HTTP_REFERER']);
    } else {
        $_SESSION['errormessage'] =  "Failed to add to Cart";
        header("Location:" . $_SERVER['HTTP_REFERER']);
    }
} elseif (isset($_POST['checkout'])) {
    $sql = "SELECT * FROM tbl_cart WHERE user = '" . $_SESSION['id'] . "' AND order_status = '0'";
    $query = mysqli_query($connectDB, $sql);
    $cartItems = mysqli_fetch_all($query, MYSQLI_ASSOC);

    $oid = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    $oid = str_shuffle($oid);
    $oid = substr($oid, 3, 13);
    $id = $_SESSION['id'];
    $status = "processing";
    $total_amount = 0;
    $promoCode = $_POST['promocode'];
    $address = $_POST['address'];

    if (empty($_POST['promocode'])) {
        if (empty($_POST['address'])) {
            $_SESSION['errormessage'] =  "Please Add Address";
            header("Location: ../../profile");
        } else {
            $connectDB->begin_transaction();

            try {
                $sql = "SELECT * FROM tbl_cart WHERE user = '$id' AND order_status = '0'";
                $query = mysqli_query($connectDB, $sql);

                while ($row = mysqli_fetch_assoc($query)) {
                    $cid = $row['_id'];
                    $total_amount += $row['total'];
                    $uql = "UPDATE tbl_cart SET order_status = '1' WHERE _id = '$cid'";
                    $uquery = mysqli_query($connectDB, $uql);
                }

                $sql = "INSERT INTO tbl_orders(user_id,order_id,total_amount,user_address_id,order_status) VALUES(?,?,?,?,?)";
                // Initialize Database Connection
                $stmt = mysqli_stmt_init($connectDB);
                // Prepare SQL statement
                mysqli_stmt_prepare($stmt, $sql);
                // Bind parameters to the placeholder
                mysqli_stmt_bind_param($stmt, "sssss", $id, $oid, $total_amount, $address, $status);
                // Execute statement
                if (mysqli_stmt_execute($stmt)) {
                    foreach ($cartItems as $item) {

                        $productId = $item['product_id'];
                        $quantity = $item['quantity'];
                        $total = $item['total'];

                        // Prepare the SQL query to insert the order item into the database
                        $iSql = "INSERT INTO order_items(order_id, product_id, quantity, price) VALUES('$oid', '$productId', '$quantity', '$total')";
                        // Execute the SQL query

                        mysqli_query($connectDB, $iSql);
                    }

                    $updateSql = "UPDATE tbl_products SET stock = stock - '$quantity' WHERE product_id = '$productId'";
                    $reduceQuery = mysqli_query($connectDB, $updateSql);

                    // Get Order Details
                    $orderSql = "SELECT * FROM tbl_orders WHERE order_id = '" . $oid . "'";
                    $orderQuery = mysqli_query($connectDB, $orderSql);
                    $orderRow = mysqli_fetch_assoc($orderQuery);
                    $order_id = $orderRow['order_id'];
                    $sub_Total = $orderRow['total_amount'];
                    $order_Date = date('d/M/Y', strtotime($orderRow['date_created']));
                    $tax = 0;

                    // Get User Details
                    $userSql = "SELECT phone, email, full_name FROM users WHERE _id = '" . $id . "'";
                    $userQuery = mysqli_query($connectDB, $userSql);
                    $userRow = mysqli_fetch_assoc($userQuery);
                    $user_phone = $userRow['phone'];
                    $user_email = $userRow['email'];
                    $user_name = $userRow['full_name'];

                    // Get User Details
                    $addressSql = "SELECT * FROM user_address WHERE _id = '" . $address . "'";
                    $addressQuery = mysqli_query($connectDB, $addressSql);
                    $addressRow = mysqli_fetch_assoc($addressQuery);
                    $user_address = $addressRow['user_address'];
                    $user_city = $addressRow['city'];
                    $user_state = $addressRow['state'];
                    $full_address = $user_address . ", " . $user_city . ", " . $user_state;

                    // Send Email to user
                    $content = file_get_contents("payment.php");

                    $variables = array();
                    $variables["orderId"] = $order_id;
                    $variables["tax"] = $tax;
                    $variables["subTotal"] = $sub_Total;
                    $variables["total"] = $sub_Total + $tax;
                    $variables["orderDate"] = $order_Date;
                    $variables["phone"] = $user_phone;
                    $variables["name"] = $user_name;
                    $variables["email"] = $user_email;
                    $variables["address"] = $full_address;
                    $variables["products"] = "";

                    $products = array();

                    // Get Order items
                    $itemsSql = "SELECT * FROM order_items WHERE order_id = '" . $oid . "'";
                    $itemQuery = mysqli_query($connectDB, $itemsSql);

                    while ($itemRow = mysqli_fetch_assoc($itemQuery)) {
                        $productSql = "SELECT * FROM tbl_products WHERE product_id = '" . $itemRow['product_id'] . "'";
                        $productQuery = mysqli_query($connectDB, $productSql);
                        $productRow = mysqli_fetch_assoc($productQuery);

                        array_push($products, array(
                            "title" => $productRow['product_name'],
                            "quantity" => $itemRow['quantity'],
                            "total" => $itemRow['price'],
                            "price" => $productRow['price'],
                        ));
                    }

                    foreach ($products as $key => $product) {

                        $single_product = file_get_contents("product.php");

                        $single_product = str_replace('{{ title }}', $product["title"], $single_product);
                        $single_product = str_replace('{{ quantity }}', $product["quantity"], $single_product);
                        $single_product = str_replace('{{ price }}', $product["price"], $single_product);
                        $single_product = str_replace('{{ amount }}', $product["total"], $single_product);

                        $variables["products"] .= $single_product;
                    }

                    foreach ($variables as $key => $value) {
                        $content = str_replace('{{ ' . $key . ' }}', $value, $content);
                    }

                    send_mail($user_email, "Order Confirmation", $content);
                    send_mail('admin@justhavit.com.ng', "A New Order has been placed", $content);

                    $_SESSION['successmessage'] =  "Your order has been placed, you can track your order using the eye icon on the 'orders' page.Thank's for choosing Havit NG.";

                    $connectDB->commit();

                    header("Location:" . $_SERVER['HTTP_REFERER']);
                } else {
                    $_SESSION['errormessage'] =  "Failed to place order please try again";
                    header("Location:" . $_SERVER['HTTP_REFERER']);
                }
            } catch (mysqli_sql_exception $exception) {
                $connectDB->rollback();

                throw $exception;
            }
        }
    } else {
        echo "Promo code";
    }
} elseif (isset($_POST['acceptOrder'])) {
    $id = $_POST['oid'];
    $date = date("Y-m-d");

    $sql = "UPDATE tbl_orders SET order_status = '1', date_updated = '$date' WHERE _id = '$id'";
    $query = mysqli_query($connectDB, $sql);
    if ($query) {
        $_SESSION['successmessage'] =  "Order accepted successfully";
        header("Location:" . $_SERVER['HTTP_REFERER']);
    } else {
        $_SESSION['errormessage'] =  "Something went wrong!";
        header("Location:" . $_SERVER['HTTP_REFERER']);
    }
} elseif (isset($_POST['shipOrder'])) {
    $id = $_POST['oid'];
    $date = date("Y-m-d");

    $sql = "UPDATE tbl_orders SET order_status = '2', date_updated = '$date' WHERE _id = '$id'";
    $query = mysqli_query($connectDB, $sql);
    if ($query) {
        $_SESSION['successmessage'] =  "Order is on route!";
        header("Location:" . $_SERVER['HTTP_REFERER']);
    } else {
        $_SESSION['errormessage'] =  "Something went wrong!";
        header("Location:" . $_SERVER['HTTP_REFERER']);
    }
} elseif (isset($_POST['deliverOrder'])) {
    $id = $_POST['oid'];
    $date = date("Y-m-d");

    $sql = "UPDATE tbl_orders SET order_status = '3', date_updated = '$date' WHERE _id = '$id'";
    $query = mysqli_query($connectDB, $sql);
    if ($query) {
        $_SESSION['successmessage'] =  "successfull";
        header("Location:" . $_SERVER['HTTP_REFERER']);
    } else {
        $_SESSION['errormessage'] =  "Something went wrong!";
        header("Location:" . $_SERVER['HTTP_REFERER']);
    }
} elseif (isset($_POST['cancelOrder'])) {
    $id = $_POST['oid'];
    $date = date("Y-m-d");

    $sql = "UPDATE tbl_orders SET order_status = '4', date_updated = '$date' WHERE _id = '$id'";
    $query = mysqli_query($connectDB, $sql);
    if ($query) {
        $_SESSION['successmessage'] =  "Order cancelled successfully";
        header("Location:" . $_SERVER['HTTP_REFERER']);
    } else {
        $_SESSION['errormessage'] =  "Something went wrong!";
        header("Location:" . $_SERVER['HTTP_REFERER']);
    }
} elseif (isset($_GET['getRemainingStock1'])) {
    $id = intval($_GET['getRemainingStock1']);
    $user = $_GET['u'];

    $sql = "SELECT * FROM tbl_cart WHERE _id = '$id'";
    $query = mysqli_query($connectDB, $sql);
    $row = mysqli_fetch_assoc($query);
    $pid = $row['product_id'];

    $sql2 = "SELECT * FROM tbl_products WHERE product_id = '$pid'";
    $query2 = mysqli_query($connectDB, $sql2);
    $row = mysqli_fetch_assoc($query2);
    $stock = intval($row['stock']);

    $return = array(
        "stock" => $stock,
    );
    $return = json_encode($return);
    echo $return;
} elseif (isset($_GET['getRemainingStock2'])) {
    $id = $_GET['getRemainingStock2'];

    $sql2 = "SELECT * FROM tbl_products WHERE product_id = '$id'";
    $query2 = mysqli_query($connectDB, $sql2);
    $row = mysqli_fetch_assoc($query2);
    $stock = intval($row['stock']);

    $return = array(
        "stock" => $stock,
    );
    $return = json_encode($return);
    echo $return;
}
//Main Else
else {
    // echo "Fuck";
    header('Location: logout');
}

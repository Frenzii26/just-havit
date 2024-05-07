<?php
// Include database connection code
include 'db_con.php';

// Get form data
$pageType = $_POST['page-type'];
$pageId = $_POST['page-id'];
$titleTag = $_POST['title-tag'];
$metaDescription = $_POST['meta-description'];

// Update title tag in the title_tags table
$sql = "UPDATE title_tags SET title_tag = '$titleTag' WHERE page_type = '$pageType' AND page_id = '$pageId'";
if (mysqli_query($connectDB, $sql)) {
    echo "Title tag updated successfully";
} else {
    echo "Error updating title tag: " . mysqli_error($connectDB);
}

// Update meta description in the meta_descriptions table
$sql = "UPDATE meta_descriptions SET meta_description = '$metaDescription' WHERE page_type = '$pageType' AND page_id = '$pageId'";
if (mysqli_query($connectDB, $sql)) {
    echo "Meta description updated successfully";
} else {
    echo "Error updating meta description: " . mysqli_error($connectDB);
}
?>

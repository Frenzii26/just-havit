<?php
// Include database connection code
include 'db_con.php';

// Function to get metadata from the database
function getMetadata($pageType, $pageId) {
    global $connectDB;
    $metadata = array();
    
    // Fetch title tag from title_tags table
    $sql = "SELECT title_tag FROM title_tags WHERE page_type = '$pageType' AND page_id = '$pageId'";
    $result = mysqli_query($connectDB, $sql);
    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $metadata['title_tag'] = $row['title_tag'];
    }
    
    // Fetch meta description from meta_descriptions table
    $sql = "SELECT meta_description FROM meta_descriptions WHERE page_type = '$pageType' AND page_id = '$pageId'";
    $result = mysqli_query($connectDB, $sql);
    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $metadata['meta_description'] = $row['meta_description'];
    }

    return $metadata;
}

// Example usage:
$pageType = $_GET['page-type'];
$pageId = $_GET['page-id'];
$metadata = getMetadata($pageType, $pageId);
echo json_encode($metadata);
?>

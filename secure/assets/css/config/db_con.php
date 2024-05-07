<?php
#Online Connection
$host = "localhost";
$user = "root";
$userPassword = "";
$dbName = "havit";

#Local Connection
// $host = "localhost";
// $user = "root";
// $userPassword = "";
// $dbName = "havit nigeria";

$connectDB = mysqli_connect($host, $user, $userPassword, $dbName);

if (!$connectDB) {
    die("Something went wrong" . mysqli_connect_error());
}
    // Ifre
<?php
#Online Connection
 $host = "localhost";
 $user = "u493715205_havitng";
 $userPassword = "[-*R4{_6?8qt";
 $dbName = "u493715205_havitnigeria";

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
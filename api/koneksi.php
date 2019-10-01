<?php

// koneksi ke database
$localhost = "localhost";
$username = "root";
$password =  "";
$db = "nilai";

$con = new mysqli($localhost, $username, $password, $db);

if(!$con) {
    die("connect error");
}

?>
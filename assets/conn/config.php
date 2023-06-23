<?php 
$localhost = "localhost";
$username = "root";
$password = ""; //keterangan jika pakai xampp pass dikosongkan saja, jika pakek appserv maka harus diisi
$database = "dbkkn_stunting";
$db = mysqli_connect($localhost, $username, $password, $database) or die("Tidak terkoneksi!");
?>
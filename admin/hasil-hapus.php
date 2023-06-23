<?php
ob_start();
include 'header.php';
$id_hasil = $_GET['id_hasil'];
mysqli_query($db, "DELETE FROM tb_hasil WHERE id_hasil='$id_hasil'");
header("location: hasil.php");

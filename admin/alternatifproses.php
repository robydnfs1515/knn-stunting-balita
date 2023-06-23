<?php
ob_start();
include 'header.php';
if (isset($_GET['proses'])) {
    if ($_GET['proses'] == 'prosestambah') {
        $id_alternatif = $_POST['id_alternatif'];
        $nama_alternatif = $_POST['nama_alternatif'];

        mysqli_query($db, "INSERT INTO tb_alternatif (id_alternatif,nama_alternatif) VALUES ('$id_alternatif','$nama_alternatif')");
        header("location:alternatif.php");

    } elseif ($_GET['proses'] == 'prosesubah') {
        $id_alternatif = $_POST['id_alternatif'];
        $nama_alternatif = $_POST['nama_alternatif'];

        mysqli_query($db, "UPDATE tb_alternatif SET nama_alternatif='$nama_alternatif' WHERE id_alternatif='$id_alternatif'");
        header("location:alternatif.php");

    } elseif ($_GET['proses'] == 'proseshapus') {
        $id_alternatif = $_GET['id_alternatif'];
        mysqli_query($db, "DELETE FROM tb_alternatif WHERE id_alternatif='$id_alternatif'");
        header("location:alternatif.php");
    }
}

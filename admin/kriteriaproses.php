<?php
ob_start();
include 'header.php';
if (isset($_GET['proses'])) {
    if ($_GET['proses'] == 'prosestambah') {
        $id_kriteria = $_POST['id_kriteria'];
        $nama_kriteria = $_POST['nama_kriteria'];
        $keterangan_kriteria = $_POST['keterangan_kriteria'];

        mysqli_query($db, "INSERT INTO tb_kriteria (id_kriteria,nama_kriteria,keterangan_kriteria) VALUES ('$id_kriteria','$nama_kriteria','$keterangan_kriteria')");
        header("location:kriteria.php");

    } elseif ($_GET['proses'] == 'prosesubah') {
        $id_kriteria = $_POST['id_kriteria'];
        $nama_kriteria = $_POST['nama_kriteria'];
        $keterangan_kriteria = $_POST['keterangan_kriteria'];

        mysqli_query($db, "UPDATE tb_kriteria SET nama_kriteria='$nama_kriteria', keterangan_kriteria='$keterangan_kriteria' WHERE id_kriteria='$id_kriteria'");
        header("location:kriteria.php");

    } elseif ($_GET['proses'] == 'proseshapus') {
        $id_kriteria = $_GET['id_kriteria'];
        mysqli_query($db, "DELETE FROM tb_kriteria WHERE id_kriteria='$id_kriteria'");
        mysqli_query($db, "DELETE FROM tb_subkriteria WHERE id_kriteria='$id_kriteria'");
        header("location:kriteria.php");
    }
}

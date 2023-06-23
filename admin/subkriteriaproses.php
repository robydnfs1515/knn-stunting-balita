<?php
ob_start();
include 'header.php';
if (isset($_GET['proses'])) {
    if ($_GET['proses'] == 'prosestambah') {

        $id_alternatif = $_POST['id_alternatif'];
        $id_subkriteria = $_POST['id_subkriteria'];
        $nama_subkriteria = $_POST['nama_subkriteria'];
        $id_kriteria = $_POST['id_kriteria'];
        $nilai_subkriteria = $_POST['nilai_subkriteria'];

        mysqli_query($db, "INSERT INTO tb_subkriteria (id_subkriteria, nama_subkriteria, id_kriteria, nilai_subkriteria) VALUES ('$id_subkriteria', '$nama_subkriteria', '$id_kriteria', '$nilai_subkriteria')");
        header("location: subkriteria.php?id_kriteria=$_POST[id_kriteria]");

    } elseif ($_GET['proses'] == 'prosesubah') {
        $id_subkriteria = $_POST['id_subkriteria'];
        $nama_subkriteria = $_POST['nama_subkriteria'];
        $id_kriteria = $_POST['id_kriteria'];
        $nilai_subkriteria = $_POST['nilai_subkriteria'];

        mysqli_query($db, "UPDATE tb_subkriteria SET nama_subkriteria='$nama_subkriteria', id_kriteria='$id_kriteria', nilai_subkriteria='$nilai_subkriteria' WHERE id_subkriteria='$id_subkriteria'");
        header("location: subkriteria.php?id_kriteria=$_POST[id_kriteria]");

    } elseif ($_GET['proses'] == 'proseshapus') {
        $id_subkriteria = $_GET['id_subkriteria'];
        $id_kriteria = $_GET['id_kriteria'];
        mysqli_query($db, "DELETE FROM tb_subkriteria WHERE id_subkriteria='$id_subkriteria'");
        header("location: subkriteria.php?id_kriteria=$_GET[id_kriteria]");
    }
}

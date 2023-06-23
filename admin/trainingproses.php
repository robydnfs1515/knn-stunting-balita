<?php
ob_start();
include 'header.php';
if (isset($_GET['proses'])) {
    if ($_GET['proses'] == 'prosestambah') {
        $id_alternatif = $_POST['id_alternatif'];
        $keputusan_training = $_POST['keputusan_training'];

        $hasil = mysqli_query($db, "SELECT * FROM tb_kriteria ORDER BY id_kriteria");
        while ($baris = mysqli_fetch_array($hasil)) {
            $idK = $baris['id_kriteria'];
            $idS = $_POST[$idK];

            $query1 = "INSERT INTO tb_training(id_alternatif, id_kriteria, id_subkriteria) VALUES ('" . $id_alternatif . "','" . $idK . "','" . $idS . "')";
            $result1 = mysqli_query($db, $query1);
        }

        mysqli_query($db, "UPDATE tb_alternatif SET keputusan_training='$keputusan_training' WHERE id_alternatif='$id_alternatif'");

        header("location:training.php?id_alternatif=$_POST[id_alternatif]");

    } elseif ($_GET['proses'] == 'prosesubah') {
        $id_alternatif = $_POST['id_alternatif'];
        $keputusan_training = $_POST['keputusan_training'];

        $query2 = " DELETE FROM tb_training WHERE id_alternatif='" . $_POST['id_alternatif'] . "'";
        $result2 = mysqli_query($db, $query2);

        $hasil = mysqli_query($db, "SELECT * FROM tb_kriteria ORDER BY id_kriteria");
        while ($baris = mysqli_fetch_array($hasil)) {
            $idK = $baris['id_kriteria'];
            $idS = $_POST[$idK];

            $query1 = "INSERT INTO tb_training(id_alternatif, id_kriteria, id_subkriteria) VALUES ('" . $id_alternatif . "','" . $idK . "','" . $idS . "')";
            $result1 = mysqli_query($db, $query1);
        }

        mysqli_query($db, "UPDATE tb_alternatif SET keputusan_training='$keputusan_training' WHERE id_alternatif='$id_alternatif'");

        header("location:training.php?id_alternatif=$_POST[id_alternatif]");

    } elseif ($_GET['proses'] == 'proseshapus') {
        $id_alternatif = $_GET['id_alternatif'];
        mysqli_query($db, "DELETE FROM tb_training WHERE id_alternatif='$id_alternatif'");
        header("location:training.php?id_alternatif=$_POST[id_alternatif]");
    }
}

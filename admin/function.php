<?php
function query($sql)
{
    global $db;
    $perintah = mysqli_query($db, $sql);
    if (!$perintah) {
        die("Gagal Melakukan Koneksi" . mysqli_connect_error());
    }

    return $perintah;
}

function chart_kelamin()
{
    $sql = "SELECT SUM (IF(Jenis_kelamin= 'L, 1,0)) AS Jumlah_laki, SUM (IF(Jenis_kelamin= 'P, 1,0)) AS Jumlah_perempuan FROM tb_alternatif";
    $perintah = query($sql);
    return $perintah;
}
<?php
ob_start();
include 'header.php';
if (isset($_GET['aksi'])) {
    if ($_GET['aksi'] == 'tambah') {
        $id_alternatif = $_POST['id_alternatif'];
        $nama_alternatif = $_POST['nama_alternatif'];

        if (empty($_POST['id_alternatif'])) {

            $hasil = mysqli_query($db, "SELECT * FROM tb_kriteria ORDER BY id_kriteria");
            while ($baris = mysqli_fetch_array($hasil)) {
                $idK = $baris['id_kriteria'];
                $idS = $_POST[$idK];

                $query1 = "INSERT INTO tb_testing(id_alternatif, nama_alternatif, id_kriteria, nilai_testing) VALUES ('" . $id_alternatif . "','" . $nama_alternatif . "','" . $idK . "','" . $idS . "')";
                $result1 = mysqli_query($db, $query1);
            }

            header("location:metode.php?id_alternatif=$_POST[id_alternatif]&nama_alternatif=$_POST[nama_alternatif]");
        } else {
            $id_alternatif = $_POST['id_alternatif'];
            $nama_alternatif = $_POST['nama_alternatif'];

            $query2 = "DELETE FROM tb_testing WHERE id_alternatif='" . $_POST['id_alternatif'] . "'";
            $result2 = mysqli_query($db, $query2);

            $hasil = mysqli_query($db, "SELECT * FROM tb_kriteria ORDER BY id_kriteria");
            while ($baris = mysqli_fetch_array($hasil)) {
                $idK = $baris['id_kriteria'];
                $idS = $_POST[$idK];

                $query1 = "INSERT INTO tb_testing(id_alternatif, nama_alternatif, id_kriteria, nilai_testing) VALUES ('" . $id_alternatif . "','" . $nama_alternatif . "','" . $idK . "','" . $idS . "')";
                $result1 = mysqli_query($db, $query1);
            }

            header("location:metode.php?id_alternatif=$_POST[id_alternatif]&nama_alternatif=$_POST[nama_alternatif]");
        }

    } elseif ($_GET['aksi'] == 'simpanhasil') {
        $nama_alternatif = $_POST['nama_alternatif'];
        $keputusan_training = $_POST['keputusan_training'];

        $query1 = "INSERT INTO tb_hasil (nama_alternatif, keputusan_training) VALUES ('" . $nama_alternatif . "','" . $keputusan_training . "')";
        $result1 = mysqli_query($db, $query1);

        header("location:hasil.php");
    }
}
?>

<form action="metode.php?aksi=tambah" method="POST" enctype="multipart/form-data">

    <input type="hidden" class="form-control" name="id_alternatif" value="A01" readonly>

    <div class="form-group">
        <label for="">Nama Balita</label>
        <input type="text" class="form-control" name="nama_alternatif" placeholder="<?=$_GET['nama_alternatif']?>">
    </div>

    <?php
$hasil = mysqli_query($db, "SELECT * FROM tb_kriteria ORDER BY id_kriteria");
while ($baris = mysqli_fetch_array($hasil)) {
    $idK = $baris['id_kriteria'];
    $labelK = $baris['nama_kriteria'];

    echo "<div class='form-group'>
                    <label>" . $labelK . "</label>";

    echo "<select name='" . $idK . "' class='form-control'>";
    $hasil2 = mysqli_query($db, "SELECT * FROM tb_subkriteria WHERE id_kriteria='" . $idK . "' ORDER BY nilai_subkriteria DESC");
    while ($baris2 = mysqli_fetch_array($hasil2)) {
        echo "<option selected value='" . $baris2['nilai_subkriteria'] . "'>" . $baris2['nama_subkriteria'] . " - (" . $baris2['nilai_subkriteria'] . ")</option>";
    }
    echo "</select> </div>";
}
?>

    <div class="modal-footer">
        <input type="submit" class="btn btn-success" name="proses" value="Proses Metode">
    </div>

</form>

<br>
<!-- --------------------------------------------------------------------------------- -->

<!-- DataTales -->
<div class='card shadow mb-2'>
    <div class='card-header py-3'>
        <h6 class='m-0 font-weight-bold text-primary'>Tabel Training</h6>
    </div>
    <div class='card-body'>
        <div class='table-responsive'>
            <table class='table table-bordered' id='dataTable' width='100%' cellspacing='0'>
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Nama Balita</th>

                        <!-- Untuk menampilakan data dari tabel kriteria -->
                        <?php

$data = mysqli_query($db, "SELECT * FROM tb_kriteria ORDER BY id_kriteria ASC");

while ($a = mysqli_fetch_array($data)) {
    echo "<th>$a[nama_kriteria]</th>";
}
?>
                        <th class="text-center">Keputusan</th>
                </thead>
                <tbody>

                    <?php
$data = mysqli_query($db, "SELECT * FROM tb_alternatif ORDER BY id_alternatif ASC");
$no = 1;

while ($a = mysqli_fetch_array($data)) {
    $nomor = $no++;
    $id = $a['id_alternatif'];
    $nama = $a['nama_alternatif'];
    echo "<tr>
                                        <td>$nomor</td>";

    echo "<td>$nama</td>";
    // untuk menampilkan nilai sub berdasarkan kriteria
    $query1 = mysqli_query($db, "SELECT a.nilai_subkriteria AS sub FROM tb_subkriteria a INNER JOIN tb_training b ON a.id_subkriteria = b.id_subkriteria WHERE b.id_alternatif='" . $id . "' ORDER BY b.id_kriteria");
    while ($result1 = mysqli_fetch_array($query1)) {
        echo "<td class='text-center'>$result1[sub]Cm</td>";
    }
    ?>
                    <td><?=$a['keputusan_training']?></td>

                    </tr>
                    <?php }?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<br>
<!-- --------------------------------------------------------------------------------- -->

<!-- DataTales -->
<div class='card shadow mb-2'>
    <div class='card-header py-3'>
        <h6 class='m-0 font-weight-bold text-primary'>Tabel Testing</h6>
    </div>
    <div class='card-body'>
        <div class='table-responsive'>
            <table class='table table-bordered' id='dataTable' width='100%' cellspacing='0'>
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Nama Alternatif</th>

                        <!-- Untuk menampilakan data dari tabel kriteria -->
                        <?php

$data = mysqli_query($db, "SELECT * FROM tb_kriteria ORDER BY id_kriteria ASC");

while ($a = mysqli_fetch_array($data)) {
    echo "<th>$a[nama_kriteria]</th>";
}
?>
                        <th class="text-center">Keputusan</th>
                </thead>
                <tbody>

                    <?php
$data = mysqli_query($db, "SELECT * FROM tb_testing WHERE id_alternatif='" . $_GET['id_alternatif'] . "' LIMIT 1");
$no = 1;

while ($a = mysqli_fetch_array($data)) {
    $nomor = $no++;
    $id = $a['id_alternatif'];
    $nama = $a['nama_alternatif'];
    echo "<tr>
                                        <td>$nomor</td>";

    echo "<td>$nama</td>";
    // untuk menampilkan nilai sub berdasarkan kriteria
    $query1 = mysqli_query($db, "SELECT nilai_testing AS sub FROM tb_testing WHERE id_alternatif='" . $id . "' ORDER BY id_kriteria");

    while ($result1 = mysqli_fetch_array($query1)) {
        echo "<td class='text-center'>$result1[sub]Cm</td>";
    }
    ?>
                    <td class="text-center">?</td>

                    </tr>
                    <?php }?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<br>
<!-- --------------------------------------------------------------------------------- -->

<!-- DataTales -->
<div class='card shadow mb-2'>
    <div class='card-header py-3'>
        <h6 class='m-0 font-weight-bold text-primary'>Euclidean Distance</h6>
    </div>
    <div class='card-body'>
        <div class='table-responsive'>
            <table class='table table-bordered' id='dataTable' width='100%' cellspacing='0'>
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Nama Alternatif</th>

                        <!-- Untuk menampilakan data dari tabel kriteria -->
                        <?php

$data = mysqli_query($db, "SELECT * FROM tb_kriteria ORDER BY id_kriteria ASC");

while ($a = mysqli_fetch_array($data)) {
    echo "<th>$a[nama_kriteria]</th>";
}
?>
                        <th class="text-center">Distance</th>
                </thead>
                <tbody>

                    <?php
$data = mysqli_query($db, "SELECT * FROM tb_alternatif ORDER BY id_alternatif ASC");
$no = 1;

while ($a = mysqli_fetch_array($data)) {
    $sum = 0.0;
    $nomor = $no++;
    $id = $a['id_alternatif'];
    $nama = $a['nama_alternatif'];
    echo "<tr>
    <td>$nomor</td>";

    "<td>$nomor</td>";

    echo "<td>$nama</td>";
    // untuk menampilkan nilai sub berdasarkan kriteria
    $query1 = mysqli_query($db, "SELECT a.nilai_subkriteria AS subtraining FROM tb_subkriteria a INNER JOIN tb_training b ON a.id_subkriteria = b.id_subkriteria WHERE b.id_alternatif='" . $id . "' ORDER BY b.id_kriteria");
    while ($result1 = mysqli_fetch_array($query1)) {
        $val1 = $result1['subtraining'];

        $query2 = mysqli_query($db, "SELECT nilai_testing AS subtesting FROM tb_testing WHERE id_alternatif='" . $id . "' ORDER BY id_kriteria");
        $result2 = mysqli_fetch_array($query2);
        $val2 = $result2['subtesting'];

        $val = pow(($val1 - $val2), 2);
        $sum += ($val);
        $akr = sqrt($sum);
        $akar = number_format($akr);
        echo "<td class='text-center'>$val</td>";
    }

    echo "<td class='text-center'>$akar</td>";

    mysqli_query($db, "UPDATE tb_alternatif SET distance='$akr' WHERE id_alternatif='$a[id_alternatif]'");
    ?>

                    </tr>
                    <?php }?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<br>

<?php
// rangking
$data = mysqli_query($db, "SELECT * FROM tb_alternatif ORDER BY distance ASC");
$rank = 1;

while ($a = mysqli_fetch_array($data)) {

    mysqli_query($db, "UPDATE tb_alternatif SET rangking='$rank' WHERE id_alternatif='$a[id_alternatif]'");
    $rank++;
}
?>


<!-- ----------------------------------------------------------------------------------- -->


<?php
// pengelompokkan list
$data = mysqli_query($db, "SELECT * FROM tb_alternatif ORDER BY distance ASC");
$rank = 1;

while ($a = mysqli_fetch_array($data)) {

    if ($a['rangking'] <= 3) {
        mysqli_query($db, "UPDATE tb_alternatif SET pilihan='Ya' WHERE id_alternatif='$a[id_alternatif]'");
    } else {
        mysqli_query($db, "UPDATE tb_alternatif SET pilihan='Tidak' WHERE id_alternatif='$a[id_alternatif]'");
    }

    mysqli_query($db, "UPDATE tb_alternatif SET rangking='$rank' WHERE id_alternatif='$a[id_alternatif]'");
    $rank++;
}

?>

<br>
<!-- -------------------------------------------------------------------------------- -->


<!-- DataTales -->
<div class='card shadow mb-2'>
    <div class='card-header py-3'>
        <h6 class='m-0 font-weight-bold text-primary'>Klasifikasi K-Nearest Neighbors</h6>
    </div>
    <div class='card-body'>
        <div class='table-responsive'>
            <table class='table table-bordered' id='dataTable' width='100%' cellspacing='0'>
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Nama Alternatif</th>
                        <th class="text-center">Distance</th>
                        <th class="text-center">Rangking</th>
                        <th class="text-center">Pilihan</th>
                        <th class="text-center">Keputusan</th>
                </thead>
                <tbody>

                    <?php
$data = mysqli_query($db, "SELECT * FROM tb_alternatif ORDER BY rangking ASC");
while ($a = mysqli_fetch_array($data)) {?>
                    <td><?=$a['id_alternatif']?></td>
                    <td><?=$a['nama_alternatif']?></td>
                    <td class="text-center"><?=number_format($a['distance'], 3)?></td>
                    <td class="text-center"><?=$a['rangking']?></td>
                    <td class="text-center"><?=$a['pilihan']?></td>
                    <td class="text-center"><?=$a['keputusan_training']?></td>
                    </tr>
                    <?php }?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<br>
<!-- ---------------------------------------------------------------------------------------- -->

<?php
$data = mysqli_query($db, "SELECT * FROM tb_alternatif ORDER BY id_alternatif ASC");
while ($a = mysqli_fetch_array($data)) {

    $data1 = mysqli_query($db, "SELECT count(*) AS jumlah_layak FROM tb_alternatif WHERE pilihan='Ya' AND keputusan_training='YA'");
    $a1 = mysqli_fetch_array($data1);

    $data2 = mysqli_query($db, "SELECT count(*) AS jumlah_tidaklayak FROM tb_alternatif WHERE pilihan='Ya' AND keputusan_training='TIDAK'");
    $a2 = mysqli_fetch_array($data2);

    $jumlah_layak = $a1['jumlah_layak'];
    $jumlah_tidaklayak = $a2['jumlah_tidaklayak'];

    // Menambahkan perubahan kategori berdasarkan variabel data
    if ($jumlah_layak > $jumlah_tidaklayak) {
        $hasil = 'YA';
        $hasill = 'Kategori Mayoritas (YA) lebih banyak daripada mayoritas (TIDAK)';
    } else {
        $hasil = 'TIDAK';
        $hasill = 'Kategori Mayoritas (TIDAK) lebih banyak daripada mayoritas (YA)';
    }
}
?>



<div class='card shadow mb-2'>
    <div class='card-header py-3'>
        <h6 class='m-0 font-weight-bold text-primary'>Kesimpulan</h6>
    </div>
    <div class='card-body'>
        <div class='table-responsive'>
            <table class='table table-bordered' id='dataTable' width='100%' cellspacing='0'>
                <p> Hasil perhitungan ini mengambil tiga data terbaik asecending (K=3) yang menggunakan <b>Klasifikasi
                        K-Nearest Neighbors(K-NN)</b>. Adapun Kesimpulan dari metode adalah: <b><?=$hasill;?></b>,
                    <b>YA</b> berjumlah <b>(<?=$jumlah_layak;?>)</b>, sedangkan dengan<b>TIDAK</b> berjumlah
                    <b>(<?=$jumlah_tidaklayak;?>)</b> Oleh karena itu, dapat disimpulkan bahwa atas
                    nama <b><?=$_GET['nama_alternatif']?></b>, keputusan yang dihasilkan adalah balita dengan kategori:
                    <b><?=$hasil;?></b>.
                </p>
            </table>
        </div>
    </div>
</div>



<br>


<form action="metode.php?aksi=simpanhasil" method="POST" enctype="multipart/form-data">

    <input type="hidden" class="form-control" name="nama_alternatif" value="<?=$_GET['nama_alternatif']?>">

    <input type="hidden" class="form-control" name="keputusan_training" value="<?=$hasil?>">

    <div class="modal-footer">
        <input type="submit" class="btn btn-success" name="proses" value="Simpan Hasil Analisa">
    </div>

</form>


<?php
include 'footer.php';
?>
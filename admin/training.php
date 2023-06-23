<?php
include 'header.php';

// untuk menampilkan data dari table alternatif
$data = mysqli_query($db, "SELECT * FROM tb_alternatif WHERE id_alternatif='" . $_GET['id_alternatif'] . "'");
$a = mysqli_fetch_array($data);
?>
<div>
<?php
$dataa = mysqli_query($db, "SELECT * FROM tb_training WHERE id_alternatif='" . $_GET['id_alternatif'] . "'");
$aa = mysqli_fetch_array($dataa);

if (empty($aa['id_alternatif'])) { ?>
      <a class="btn btn-success" href="trainingaksi.php?aksi=tambah&id_alternatif=<?=$_GET['id_alternatif']?>"><i
            class="fa fa-plus" aria-hidden="true"></i>&nbsp
        Tambah</a>
 <?php }else{ }?>
   
</div>

<br>

<!-- DataTales -->
<div class='card shadow mb-2'>
    <div class='card-header py-3'>
        <h6 class='m-0 font-weight-bold text-primary'>Tabel Training / <a
                href="alternatif.php"><?=$a['nama_alternatif'];?></a></h6>
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
                        <th class="text-center">Action</th>
                </thead>
                <tbody>

                    <?php
$data = mysqli_query($db, "SELECT * FROM tb_alternatif WHERE id_alternatif='{$_GET['id_alternatif']}' ORDER BY id_alternatif ASC");
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
        echo "<td>$result1[sub]</td>";
    }
    ?>
                    <td class="text-center"><?=$a['keputusan_training']?></td>

                    <td class="text-center">
                        <a href="trainingaksi.php?id_alternatif=<?=$a['id_alternatif'];?>&aksi=ubah"
                            class="btn btn-primary">Edit</a>
                        <a href="trainingproses.php?id_alternatif=<?=$a['id_alternatif'];?>&proses=proseshapus"
                            class="btn btn-danger">Hapus</a>
                    </td>
                    </tr>
                    <?php }?>
                </tbody>
            </table>
        </div>
    </div>
</div>

</div>
<!-- End of Main Content -->

<?php
include 'footer.php';
?>
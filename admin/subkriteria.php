<?php
include 'header.php';
?>
<?php
$data = mysqli_query($db, "SELECT * FROM tb_kriteria WHERE id_kriteria='$_GET[id_kriteria]'");
$a = mysqli_fetch_array($data);
?>
<div>
    <a class="btn btn-success" href="subkriteriaaksi.php?aksi=tambah&id_kriteria=<?=$_GET['id_kriteria']?>"><i
            class="fa fa-plus" aria-hidden="true"></i>&nbsp
        Tambah</a>
</div>

<br>

<!-- DataTales -->
<div class='card shadow mb-2'>
    <div class='card-header py-3'>
        <h6 class='m-0 font-weight-bold text-primary'>Tabel Sub-Kriteria / <a
                href="kriteria.php"><?=$a['nama_kriteria'];?></a></h6>
    </div>
    <div class='card-body'>
        <div class='table-responsive'>
            <table class='table table-bordered' id='dataTable' width='100%' cellspacing='0'>
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Nama Sub-Kriteria</th>
                        <th class="text-center">Nilai</th>
                        <th class="text-center">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
$data = mysqli_query($db, "SELECT * FROM tb_kriteria a INNER JOIN tb_subkriteria b ON a.id_kriteria = b.id_kriteria WHERE b.id_kriteria = '$_GET[id_kriteria]' ORDER BY b.id_subkriteria ASC");
$no = 1;

while ($a = mysqli_fetch_array($data)) {
    ?>

                    <tr>
                        <td><?=$no++;?></td>
                        <td><?=$a['nama_subkriteria'];?></td>
                        <td class="text-center"><?=$a['nilai_subkriteria'];?></td>
                        <td class="text-center">
                            <a href="subkriteriaaksi.php?id_kriteria=<?=$a['id_kriteria'];?>&id_subkriteria=<?=$a['id_subkriteria'];?>&aksi=ubah"
                                class="btn btn-primary">Edit</a>
                            <a href="subkriteriaproses.php?id_kriteria=<?=$a['id_kriteria'];?>&id_subkriteria=<?=$a['id_subkriteria'];?>&proses=proseshapus"
                                class="btn btn-danger">Hapus</a>
                        </td>
                    </tr>

                    <?php
}
?>
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
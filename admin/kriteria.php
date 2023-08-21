<?php
include 'header.php';
?>

<div>
    <a class="btn btn-success" href="kriteriaaksi.php?aksi=tambah" role="button"><i class="fa fa-plus"
            aria-hidden="true"></i>&nbsp
        Tambah</a>
</div>

<br>

<!-- DataTales -->
<div class='card shadow mb-2'>
    <div class='card-header py-3'>
        <h6 class='m-0 font-weight-bold text-primary'>Tabel kriteria</h6>
    </div>
    <div class='card-body'>
        <div class='table-responsive'>
            <table class='table table-bordered' id='dataTable' width='100%' cellspacing='0'>
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Nama kriteria</th>
                        <th class="text-center">Keterangan</th>
                        <!-- <th class="text-center">Sub-Kriteria</th> -->
                        <th class="text-center">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
$data = mysqli_query($db, "SELECT * FROM tb_kriteria ORDER BY id_kriteria asc");
$no = 1;

while ($a = mysqli_fetch_array($data)) {
    ?>

                    <tr>
                        <td><?=$no++;?></td>
                        <td><?=$a['nama_kriteria'];?></td>
                        <td><?=$a['keterangan_kriteria'];?></td>
                        <td class="text-center">
                            <a href="subkriteria.php?id_kriteria=<?=$a['id_kriteria'];?>" class="btn btn-warning"><i
                                    class="fas fa-spinner fa-spin"></i></a>
                        </td>
                        <td class="text-center">
                            <a href="kriteriaaksi.php?id_kriteria=<?=$a['id_kriteria'];?>&aksi=ubah"
                                class="btn btn-primary">Edit</a>

                            <a href="kriteriaproses.php?id_kriteria=<?=$a['id_kriteria'];?>&proses=proseshapus"
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
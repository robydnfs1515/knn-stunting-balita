<?php
include 'header.php';
?>

<!-- DataTales -->
<div class='card shadow mb-2'>
    <div class='card-header py-3'>
        <h6 class='m-0 font-weight-bold text-primary'>Tabel Alternatif</h6>
    </div>
    <div class='card-body'>
        <div class='table-responsive'>
            <table class='table table-bordered' id='dataTable' width='100%' cellspacing='0'>
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Nama Alternatif</th>
                        <th class="text-center">Keputusan</th>
                        <th class="text-center">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
$data = mysqli_query($db, "SELECT * FROM tb_hasil ORDER BY id_hasil asc");
$no = 1;

while ($a = mysqli_fetch_array($data)) {
    ?>

                    <tr>
                        <td><?=$no++;?></td>
                        <td><?=$a['nama_alternatif'];?></td>
                        <td class="text-center"><?=$a['keputusan_training'];?></td>

                        <td class="text-center">
                            <a href="hasil-hapus.php?id_hasil=<?=$a['id_hasil'];?>&proses=proseshapus"
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
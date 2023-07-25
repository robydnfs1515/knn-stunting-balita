<?php
include 'header.php';
?>

<div>
    <a class="btn btn-success" href="alternatifaksi.php?aksi=tambah" role="button"><i class="fa fa-plus"
            aria-hidden="true"></i>&nbsp
        Tambah</a>
</div>

<br>

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
                        <th>Nomor Induk Kependudukan</th>
                        <th>Nama Balita</th>
                        <th>Umur</th>
                        <th>Tanggal Lahir</th>
                        <th class="text-center">Traning</th>
                        <th class="text-center">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
$data = mysqli_query($db, "SELECT * FROM tb_alternatif ORDER BY id_alternatif asc");
$no = 1;

while ($a = mysqli_fetch_array($data)) {
    ?>

                    <tr>
                        <td><?=$a['nik_alternatif'];?></td>
                        <td><?=$a['nama_alternatif'];?></td>
                        <td><?=$a['umur_alternatif'];?></td>
                        <td><?=$a['tgl_alternatif'];?></td>
                        <td class="text-center">
                            <a href="training.php?id_alternatif=<?=$a['id_alternatif'];?> "
                                class="btn btn-warning">Training</a>
                        </td>
                        <td class="text-center">
                            <a href="alternatifaksi.php?id_alternatif=<?=$a['id_alternatif'];?>&aksi=ubah"
                                class="btn btn-primary">Edit</a>
                            <a href="alternatifproses.php?id_alternatif=<?=$a['id_alternatif'];?>&proses=proseshapus"
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
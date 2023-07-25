<?php
include 'header.php';

// Lakukan koneksi ke database
// $db = mysqli_connect("localhost", "username", "password", "nama_database");
// Pastikan melakukan koneksi ke database sebelum menjalankan query

if (isset($_GET['aksi'])) {
    if ($_GET['aksi'] == 'tambah') {
        $cari_id = mysqli_query($db, "SELECT max(id_kriteria) FROM tb_kriteria");
        $data_id = mysqli_fetch_array($cari_id);
        if ($data_id) {
            $nilai_id = substr($data_id[0], 1);
            $id = (int) $nilai_id;
            $id = $id + 1;
            $id_otomatis = "K" . str_pad($id, 2, "0", STR_PAD_LEFT);
        } else {
            $id_otomatis = "K01";
        }
        ?>

<div class='card shadow mb-2'>
    <div class='card-header py-3'>
        <h6 class='m-0 font-weight-bold text-primary'>Kriteria / Tambah Kriteria</h6>
    </div>
    <div class='card-body'>
        <div class='table-responsive'></div>

        <form action="kriteriaproses.php?proses=prosestambah" method="post" enctype="multipart/form-data">
            <input type="hidden" name="id_kriteria" class="form-control" value="<?=$id_otomatis?>">

            <div class="form-group">
                <label>Nama kriteria</label>
                <input type="text" name="nama_kriteria" class="form-control">
            </div>

            <div class="form-group">
                <label>Keterangan Kriteria</label>
                <input type="text" name="keterangan_kriteria" class="form-control">
            </div>

            <div class="modal-footer">
                <a href="kriteria.php" class="btn btn-primary">Kembali</a>
                <input type="submit" class="btn btn-success" value="Simpan">
            </div>
        </form>
    </div>
</div>

<?php
} elseif ($_GET['aksi'] == 'ubah') {
        ?>

<div class='card shadow mb-2'>
    <div class='card-header py-3'>
        <h6 class='m-0 font-weight-bold text-primary'>Kriteria / Ubah Data Kriteria</h6>
    </div>
    <div class='card-body'>
        <div class='table-responsive'>
            <?php
$data = mysqli_query($db, "SELECT * FROM tb_kriteria WHERE id_kriteria = '" . $_GET['id_kriteria'] . "'");
        while ($a = mysqli_fetch_assoc($data)) {
            ?>
        </div>

        <form action="kriteriaproses.php?proses=prosesubah" method="post" enctype="multipart/form-data">
            <input type="hidden" name="id_kriteria" class="form-control" value="<?=$a['id_kriteria']?>">

            <div class="form-group">
                <label>Nama kriteria</label>
                <input type="text" name="nama_kriteria" class="form-control" value="<?=$a['nama_kriteria']?>">
            </div>

            <div class="form-group">
                <label>Keterangan kriteria</label>
                <input type="text" name="keterangan_kriteria" class="form-control"
                    value="<?=$a['keterangan_kriteria']?>">
            </div>

            <div class="modal-footer">
                <a href="kriteria.php" class="btn btn-primary">Kembali</a>
                <input type="submit" class="btn btn-success" value="Ubah">
            </div>
        </form>
        <?php
}
    }
}
?>
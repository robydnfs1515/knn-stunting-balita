<?php
include 'header.php';
if (isset($_GET['aksi'])) {
    if ($_GET['aksi'] == 'tambah') {?>

<?php
$cari_id = mysqli_query($db, "SELECT max(id_alternatif) FROM tb_alternatif");
        $data_id = mysqli_fetch_array($cari_id);
        if ($data_id) {
            $nilai_id = substr($data_id[0], 1);
            $id = (int) $nilai_id;
            $id = $id + 1;
            $id_otomatis = "A" . str_pad($id, 2, "0", STR_PAD_LEFT);
        } else {
            $id_otomatis = "A01";
        }
        ?>

<div class='card shadow mb-2'>
    <div class='card-header py-3'>
        <h6 class='m-0 font-weight-bold text-primary'>Alternatif / Tambah Alternatif</h6>
    </div>
    <div class='card-body'>
        <div class='table-responsive'>

        </div>

        <form action="alternatifproses.php?proses=prosestambah" method="post" enctype="multipart/form-data">

            <input type="hidden" name="id_alternatif" class="form-control" value="<?=$id_otomatis?>">

            <div class="form-group">
                <label for="">Nomor Induk Kependudukan</label>
                <input type="text" name="nik_alternatif" class="form-control">
            </div>
            <div class="form-group">
                <label for="">Nama Balita</label>
                <input type="text" name="nama_alternatif" class="form-control">
            </div>
            <div class="form-group">
                <label for="">Umur (Bulan)</label>
                <input type="text" name="umur_alternatif" class="form-control">
            </div>
            <div class="form-group">
                <label for="">Tanggal Lahir</label>
                <input type="date" name="tgl_alternatif" class="form-control">
            </div>

            <div class="modal-footer">
                <a href="alternatif.php" class="btn btn-primary">Kembali</a>
                <input type="submit" class="btn btn-success" value="Simpan">
            </div>

        </form>
    </div>
</div>
<?php } elseif ($_GET['aksi'] == 'ubah') {?>

<div class='card shadow mb-2'>
    <div class='card-header py-3'>
        <h6 class='m-0 font-weight-bold text-primary'>Alternatif / Ubah Data Alternatif</h6>
    </div>
    <div class='card-body'>
        <div class='table-responsive'>
            <?php
$data = mysqli_query($db, "SELECT * FROM tb_alternatif WHERE id_alternatif = '" . $_GET['id_alternatif'] . "'");

        while ($a = mysqli_fetch_array($data)) {
            ?>

        </div>

        <form action="alternatifproses.php?proses=prosesubah" method="post" enctype="multipart/form-data">

            <input type="hidden" name="id_alternatif" class="form-control" value="<?=$a['id_alternatif'];?>">

            <div class="form-group">
                <label for="">Nomor Induk Kependudukan</label>
                <input type="text" name="nik_alternatif" class=" form-control" value="<?=$a['nik_alternatif'];?>">
            </div>
            <div class="form-group">
                <label for="">Nama Balita</label>
                <input type="text" name="nama_alternatif" class=" form-control" value="<?=$a['nama_alternatif'];?>">
            </div>
            <div class="form-group">
                <label for="">Umur (Bulan)</label>
                <input type="text" name="umur_alternatif" class=" form-control" value="<?=$a['umur_alternatif'];?>">
            </div>
            <div class="form-group">
                <label for="">Tanggal Lahir</label>
                <input type="date" name="tgl_alternatif" class=" form-control" value="<?=$a['tgl_alternatif'];?>">
            </div>

            <div class="modal-footer">
                <a href="alternatif.php" class="btn btn-primary">Kembali</a>
                <input type="submit" class="btn btn-success" value="Ubah">
            </div>

        </form>
        <?php }?>
    </div>
</div>

<?php
}
}
?>
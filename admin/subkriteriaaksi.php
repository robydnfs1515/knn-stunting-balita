<?php
include 'header.php';
if (isset($_GET['aksi'])) {
    if ($_GET['aksi'] == 'tambah') {?>

<?php
$cari_id = mysqli_query($db, "SELECT max(id_subkriteria) FROM tb_subkriteria");
        $data_id = mysqli_fetch_array($cari_id);
        if ($data_id) {
            $nilai_id = substr($data_id[0], 1);
            $id = (int) $nilai_id;
            $id = $id + 1;
            $id_otomatis = "S" . str_pad($id, 2, "0", STR_PAD_LEFT);
        } else {
            $id_otomatis = "S01";
        }

        ?>

<div class='card shadow mb-2'>
    <div class='card-header py-3'>
        <h6 class='m-0 font-weight-bold text-primary'>Sub-Kriteria / Tambah Sub-Kriteria</h6>
    </div>
    <div class='card-body'>
        <div class='table-responsive'>

        </div>

        <form action="subkriteriaproses.php?proses=prosestambah" method="post" enctype="multipart/form-data">

            <input type="hidden" name="id_subkriteria" class="form-control" value="<?=$id_otomatis?>">

            <input type="hidden" name="id_kriteria" class="form-control" value="<?=$_GET['id_kriteria'];?>">

            <div class="form-group">
                <label>Nama Sub-Kriteria</label>
                <input type="text" name="nama_subkriteria" class="form-control">
            </div>

            <div class="form-group">
                <label>Nilai Sub-Kriteria</label>
                <input type="text" name="nilai_subkriteria" class="form-control">
            </div>

            <div class="modal-footer">
                <a href="subkriteria.php?id_kriteria=<?=$_GET['id_kriteria'];?>" class="btn btn-primary">Kembali</a>
                <input type="submit" class="btn btn-success" value="Simpan">
            </div>

        </form>
    </div>
</div>
<?php } elseif ($_GET['aksi'] == 'ubah') {?>

<div class='card shadow mb-2'>
    <div class='card-header py-3'>
        <h6 class='m-0 font-weight-bold text-primary'>subkriteria / Ubah Data subkriteria</h6>
    </div>
    <div class='card-body'>
        <div class='table-responsive'>
            <?php
$data = mysqli_query($db, "SELECT * FROM tb_subkriteria WHERE id_subkriteria ='$_GET[id_subkriteria]'");
        while ($a = mysqli_fetch_array($data)) {
            ?>

        </div>

        <form action="subkriteriaproses.php?proses=prosesubah" method="post" enctype="multipart/form-data">

            <input type="hidden" name="id_subkriteria" class="form-control" value="<?=$a['id_subkriteria'];?>">

            <input type="hidden" name="id_kriteria" class="form-control" value="<?=$a['id_kriteria'];?>">

            <div class="form-group">
                <label>Nama Sub-Kriteria</label>
                <input type="text" name="nama_subkriteria" class=" form-control" value="<?=$a['nama_subkriteria'];?>">
            </div>

            <div class="form-group">
                <label>Nilai Sub-Kriteria</label>
                <input type="text" name="nilai_subkriteria" class=" form-control" value="<?=$a['nilai_subkriteria'];?>">
            </div>

            <div class="modal-footer">
                <a href="subkriteria.php?id_kriteria=<?=$_GET['id_kriteria'];?>" class="btn btn-primary">Kembali</a>
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
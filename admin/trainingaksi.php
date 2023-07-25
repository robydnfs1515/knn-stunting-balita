<?php
include 'header.php';
if (isset($_GET['aksi'])) {
    if ($_GET['aksi'] == 'tambah') {
        ?>

<div class='card shadow mb-2'>
    <div class='card-header py-3'>
        <h6 class='m-0 font-weight-bold text-primary'>Training / Tambah Data Training</h6>
    </div>
    <div class='card-body'>
        <div class='table-responsive'>

        </div>

        <form action="trainingproses.php?proses=prosestambah" method="post" enctype="multipart/form-data">

            <input type="hidden" name="id_alternatif" class="form-control"
                value="<?=htmlspecialchars($_GET['id_alternatif']);?>">

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
                echo "<option selected value='" . $baris2['id_subkriteria'] . "'>" . $baris2['nama_subkriteria'] . " - (" . $baris2['nilai_subkriteria'] . ")</option>";
            }
            echo "</select> </div>";
        }
        ?>

            <div class="form-group">
                <label>Keputusan</label>
                <select name="keputusan_training" class="form-control">
                    <option>YA</option>
                    <option>TIDAK</option>
                </select>

            </div>

            <div class="modal-footer">
                <a href="training.php?id_alternatif=<?=$_GET['id_alternatif'];?>" class="btn btn-primary">Kembali</a>
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
        <h6 class='m-0 font-weight-bold text-primary'>subkriteria / Ubah Data subkriteria</h6>
    </div>
    <div class='card-body'>
        <div class='table-responsive'></div>

        <form action="trainingproses.php?proses=prosesubah" method="post" enctype="multipart/form-data">

            <input type="hidden" name="id_alternatif" class="form-control"
                value="<?=htmlspecialchars($_GET['id_alternatif']);?>">

            <?php

        $hasil = mysqli_query($db, "SELECT * FROM tb_kriteria ORDER BY id_kriteria");
        while ($baris = mysqli_fetch_array($hasil)) {
            $idK = $baris['id_kriteria'];
            $labelK = $baris['nama_kriteria'];
            $id_alternatif = $_GET['id_alternatif'];

            $hasil3 = mysqli_query($db, "SELECT * FROM tb_training WHERE id_kriteria='" . $idK . "' AND id_alternatif='" . $id_alternatif . "'");

            $result3 = mysqli_fetch_array($hasil3, MYSQLI_ASSOC);
            $sub = $result3['id_subkriteria'];

            echo "<div class='form-group'>
                        <label>" . $labelK . "</label>";

            echo "<select name='" . $idK . "' class='form-control'>";
            $hasil2 = mysqli_query($db, "SELECT * FROM tb_subkriteria WHERE id_kriteria='" . $idK . "' ORDER BY nilai_subkriteria DESC");
            while ($baris2 = mysqli_fetch_array($hasil2)) {
                if ($baris2['id_subkriteria'] == $sub) {
                    echo "<option selected value='" . $baris2['id_subkriteria'] . "'>" . $baris2['nama_subkriteria'] . " - (" . $baris2['nilai_subkriteria'] . ")</option>";
                } else {

                    echo "<option value='" . $baris2['id_subkriteria'] . "'>" . $baris2['nama_subkriteria'] . " - (" . $baris2['nilai_subkriteria'] . ")</option>";
                }
            }
            echo "</select> </div>";
        }
        ?>

            <?php
$hasil = mysqli_query($db, "SELECT * FROM tb_alternatif WHERE id_alternatif='$_GET[id_alternatif]'");
        while ($baris = mysqli_fetch_array($hasil)) {?>

            <div class="form-group">
                <label>Keputusan</label>
                <select name="keputusan_training" class="form-control">
                    <option selected><?=$baris['keputusan_training']?></option>
                    <option>YA</option>
                    <option>TIDAK</option>
                </select>
            </div>
            <?php }?>

            <div class="modal-footer">
                <a href="training.php?id_alternatif=<?=$_GET['id_alternatif'];?>" class="btn btn-primary">Kembali</a>
                <input type="submit" class="btn btn-success" value="Ubah">
            </div>

        </form>
    </div>
</div>

<?php
}
}
?>
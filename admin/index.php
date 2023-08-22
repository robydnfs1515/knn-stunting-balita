<?php
include 'header.php';

$card = mysqli_query($db, "SELECT * FROM tb_alternatif");

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php
$total_card = mysqli_num_rows($card);
?>

    <div class="card text-center">
        <div class="card-header">
            Total Data Balita
        </div>
        <div class="card-body">
            <h5 class="card-title">Data Balita</h5>
            <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
            <a href="#" class="btn btn-primary"><?php echo $total_card; ?></a>
        </div>
        <div class="card-footer text-body-secondary">
        </div>
    </div>

</body>

</html>

<?php
include 'footer.php';
?>
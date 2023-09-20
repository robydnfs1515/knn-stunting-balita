<?php
include 'header.php';

$card = mysqli_query($db, "SELECT * FROM tb_alternatif");
$card2 = mysqli_query($db, "SELECT * FROM tb_hasil");

// Ambil data jenis kelamin dari database
$query = mysqli_query($db, "SELECT kelamin_alternatif, COUNT(*) as total FROM tb_alternatif GROUP BY kelamin_alternatif");

$jenisKelamin = [];
$totalKelamin = [];

while ($row = mysqli_fetch_assoc($query)) {
    $jenisKelamin[] = $row['kelamin_alternatif'];
    $totalKelamin[] = $row['total'];
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Balita dan Grafik Jenis Kelamin Balita</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>

<body>
    <?php
$total_card = mysqli_num_rows($card);
?>
    <div class="row">
        <div class="col-md-6">
            <div class="card text-center">
                <div class="card-header">
                    Data Balita
                </div>
                <div class="card-body">
                    <h5 class="card-title">Total Data Balita</h5>
                    <a href="alternatif.php" class="btn btn-primary"><?php echo $total_card; ?></a>
                </div>
                <div class="card-footer text-body-secondary">
                </div>
            </div>
        </div>

        <?php
$total_card2 = mysqli_num_rows($card2);
?>
        <div class="col-md-6">
            <div class="card text-center">
                <div class="card-header">
                    Data Balita
                </div>
                <div class="card-body">
                    <h5 class="card-title">Total Data Balita Dihitung</h5>
                    <a href="hasil.php" class="btn btn-primary"><?php echo $total_card2; ?></a>
                </div>
                <div class="card-footer text-body-secondary">
                </div>
            </div>
        </div>
    </div>

    <br>

    <div class="card text-center">
        <div class="card-header">
            Grafik Jenis Kelamin Balita
        </div>
        <div class="card-body">
            <div>
                <canvas id="jenisKelaminChart"></canvas>
            </div>

            <script>
            // Ambil data jenis kelamin dari PHP
            const jenisKelamin = <?php echo json_encode($jenisKelamin); ?>;
            const total = <?php echo json_encode($totalKelamin); ?>;

            const ctx = document.getElementById('jenisKelaminChart');

            new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: jenisKelamin,
                    datasets: [{
                        label: 'Jumlah',
                        data: total,
                        backgroundColor: [
                            'rgba(54, 162, 235, 0.2)', // Warna untuk "Laki-Laki"
                            'rgba(255, 99, 132, 0.2)' // Warna untuk "Perempuan"
                        ],
                        borderColor: [
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 99, 132, 1)'
                        ],
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
            </script>
        </div>
        <div class="card-footer text-body-secondary">
        </div>
    </div>
</body>

</html>

<?php
include 'footer.php';
?>
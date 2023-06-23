<?php 
if (isset($_GET['aksi'])) {
  if ($_GET['aksi']=='login') {
    session_start();
    include 'assets/conn/config.php';
    $username=$_POST['username'];
    $password=$_POST['password'];

    $query=mysqli_query($db, "SELECT * from tb_users where username='$username' AND password='$password'");
    $cek = mysqli_num_rows($query);

    if ($cek > 0) {
      $data = mysqli_fetch_assoc($query);
      if ($data['level'] == 'Admin') {
        $_SESSION ['username']=$username;
        $_SESSION ['level']='Admin' ;
        header("location:admin/index.php");
    } else {
      header("location:index.php?pesan=gagal!");
      }
    }
  }
}
 ?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Penerapan Metode KNN</title>

  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css"
    integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

  <!-- Optional theme -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap-theme.min.css"
    integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

  <!-- Latest compiled and minified JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"
    integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous">
  </script>

  <link rel="stylesheet" href="assets/css/cosmo.min.css">

  <!-- css -->
  <style>
  .kotak {
    margin-top: 150px;
    padding-left: 300px;
    padding-right: 300px;
  }

  .kotak .input-group {
    margin-left: 20px;
  }
  </style>

</head>

<body>

  <?php 
  if (isset($_GET['aksi'])) {
    if ($_GET['aksi'] =='login') {
      echo "<div style='margin-button:-1px' class='alert alert-danger' role='alert'>Login Anda Gagal, Username dan Password Anda Salah</div>";
    }
  }
?>

  <form action="index.php?aksi=login" method="post" enctype="multipart/form-data">
    <div class="com-md-7 col-offset-4 kotak">
      <div class="text-center">
        <h3>LOGIN SISTEN PENERAPAN METODE KNN</h3>
      </div>
      <hr>
      <div class="form-group">
        <label for="">Username</label>
        <input type="text" name="username" class="form-control" placeholder="Username">
      </div>
      <div class="form-group">
        <label for="">Password</label>
        <input type="password" name="password" class="form-control" placeholder="Password">
      </div>
      <div>
        <input type="submit" value="login" class="btn btn-primary">
      </div>
    </div>
  </form>
</body>

</html>
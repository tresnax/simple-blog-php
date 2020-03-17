<?php 
include("akses.php");   // Mengaktifkan Sesion Login
require("../koneksi.php"); // Memanggil file koneksi.php untuk koneksi ke database
?>

<p> Login Admin </p>
<form action="" method="post"> 
    <input type="text" name="username" placeholder="username" required autofocus> 
    <input type="password" name="password" placeholder="password" required> 
    <button type="submit" name="login" value="Login">Login</button>
</form>

<!-- Sesion akan mencoba mengecek username dan password ke database dengan script dibawah-->
  <?php
  if(isset($_POST['login'])){
    $user = mysqli_real_escape_string($conn, htmlentities($_POST['username']));
    $pass = mysqli_real_escape_string($conn, htmlentities(md5($_POST['password'])));

    $sql = mysqli_query($conn, "SELECT * FROM users WHERE username='$user' AND password='$pass'") or die(mysqli_error($conn));
    if(mysqli_num_rows($sql) == 0){
      echo '<center><span class="label label-danger">User tidak ditemukan</span></center>';
    }else{
      $row = mysqli_fetch_assoc($sql);
      if($row['level'] == 'admin'){
        $_SESSION['admin']=$user;
        $_SESSION['level']='admin';
        echo '<script language="javascript">document.location="../admin/";</script>';
      }
      else{
        echo '<center><div class="alert alert-danger">Upss...!!! Login gagal.</div></center>';
      }
    }
  }
  ?>

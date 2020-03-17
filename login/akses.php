<?php
if (session_status() == PHP_SESSION_NONE) { // mengecek apakah session belum dimulai
    session_start(); // maka mulai session
}
if(isset($_SESSION['admin'])){ // jika session adalah admin
	echo '<script language="javascript">document.location="../admin/";</script>'; // maka arahkan ke halaman admin
}
?>
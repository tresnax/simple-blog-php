<?php
	include "akses.php";
	include "../koneksi.php";

	$username = $_SESSION['admin']; // mengambil username dari session yang login
	$sql = mysqli_query($conn, "SELECT * FROM users WHERE username='$username'"); // query memilih entri username pada database
	
	if(mysqli_num_rows($sql) == 0){
  		header("Location: index.php");
	}else{
  		$row = mysqli_fetch_assoc($sql);
	}

	if(isset($_GET['aksi']) == 'delete'){ // mengkonfirmasi jika 'aksi' bernilai 'delete'
        $id = $_GET['id']; // ambil nilai nim
        $cek = mysqli_query($conn, "SELECT * FROM berita WHERE id_berita='$id'"); // query untuk memilih entri dengan nim yang dipilih
        if(mysqli_num_rows($cek) == 0){ // mengecek jika tidak ada entri nim yang dipilih
          echo 'Data tidak ditemukan <a href="index.php">Kembali</a>. <br><br>'; // maka tampilkan 'Data tidak ditemukan.'
        }else{ // mengecek jika terdapat entri nim yang dipilih
          $delete = mysqli_query($conn, "DELETE FROM berita WHERE id_berita='$id'"); // query untuk menghapus
          if($delete){ // jika query delete berhasil dieksekusi
            echo 'Data berhasil dihapus <a href="index.php">Kembali</a>. <br><br>'; // maka tampilkan 'Data berhasil dihapus.'
		}else{ // jika query delete gagal dieksekusi
            echo 'Data gagal dihapus <a href="index.php">Kembali</a>. <br><br>'; // maka tampilkan 'Data gagal dihapus.'
          }
        }
      }
?>

Selamat Datang <?php echo $row['nama_lengkap']; ?> | <a href="logout.php">Logout</a>

<p>
<a href="tambah.php">Tambah Berita</a></h4>
<p>
<?php
	$query_ambil_berita	= mysqli_query($conn,"SELECT * FROM berita"); //query ambil data berita.
	while ($data_berita = mysqli_fetch_array($query_ambil_berita)) {
	//perulangan untuk menampilkan berita 
	echo'
		<table border=0>
		<tr>
			<td>'.$data_berita['judul'].'</td>
			<td>iki berita pamane || <small>pada : '.$data_berita['tanggal_posting'].'</small></td>
			<td>[<a href="index.php?aksi=delete&id='.$data_berita['id_berita'].'" onclick="return confirm(\'Anda yakin..?\')">Hapus</a>]</td> 
			<td>[<a href="edit.php?id='.$data_berita['id_berita'].'">Edit</a>]</td>
		</tr>
		';
	}
?>
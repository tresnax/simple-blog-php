<html>
<head>
<title>Edit berita</title>
</head>

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

	$query_ambil_berita	= mysqli_query($conn,"SELECT * FROM berita WHERE id_berita = '".$_GET['id']."'"); //query ambil data berita.
	$data_berita 		= mysqli_fetch_array($query_ambil_berita);

	if(isset($_POST['simpan'])){ // jika tombol 'Simpan' dengan properti name="simpan" ditekan
		$id_berita	= $_POST['id_berita'];
		$judul		= $_POST['judul'];
		$kategori	= $_POST['kategori'];
		$penulis	= $_POST['penulis'];
		$isi		= $_POST['isi'];
  
  		$temp = $_FILES['gambar']['tmp_name'];
  		$name = $_FILES['gambar']['name'];
  		$size = $_FILES['gambar']['size'];
  		$type = $_FILES['gambar']['type'];
  		$folder = "../gambar/";
  
  		// proses validasi
  		if ($size < 2088140 and $type =='image/jpeg') {
  		// upload Process
	  		move_uploaded_file($temp, $folder . $name);
  		// insert data ke database
	  		//$insert = mysqli_query($koneksi, "INSERT INTO smes_galery (gambar, ekskul, keterangan) VALUES ('$name', '$ekskul', '$keterangan')") or die(mysqli_error($koneksi));
			$insert	= mysqli_query($conn,"UPDATE berita SET kategori='$kategori', judul='$judul', penulis='$penulis', isi_berita='$isi', gambar='$name' WHERE id_berita ='".$_GET['id']."'") or die(mysqli_error());
			
			if($insert){
  			// menampikan informasi file yang di upload
	  			echo 'Gambar Berhasil Diubah <a href="index.php">Kembali</a>. <br><br>'; // maka tampilkan 'Data Mahasiswa Berhasil Di Simpan.'
			}else{
	  			echo 'Ups, Gambar Gagal Diubah ke database!';
			}
  		}else{
	  		echo 'Ups, Gambar Gagal Diubah, Format haru jpg atau data kurang dari 2Mb.!';
  		}
	}
?>
<br>
	<form action="" method="post" enctype="multipart/form-data">
	<input type="hidden" name="id_berita" value="<?php echo $data_berita['id_berita']; ?>">
	
		<table border="0">
			<tr><td>Judul</td><td><input type="text" name="judul" size="50" required value="<?php echo $data_berita['judul']; ?>"></td></tr>
			<tr><td>Kategori</td><td>
				<select name="kategori" value="">
					<option value="<?php echo $data_berita['kategori']; ?>"><?php echo $data_berita['kategori']; ?></option>
					<option value="Sekolah">Sekolah</option>
					<option value="Guru">Guru</option>
					<option value="Siswa">Siswa</option>
				</select>
			</td></tr>
			<tr><td>Penulis</td><td><input type="text" name="penulis" size="10" required value="<?php echo $data_berita['penulis']; ?>"></td></tr>
			<tr><td>File Gambar</td><td><input type="file" name="gambar" required ></td></tr>
			<tr><td>Isi</td><td><textarea name="isi" rows="15" cols="40" required><?php echo $data_berita['isi_berita']; ?>"</textarea></td></tr>
			<tr><td></td><td><input type="submit" name="simpan" value="Simpan"></td>
			<td><input type="button" value="Kembali" onclick="history.back()"></td></tr>
		</table>
		
	</form>
</body>
</html>
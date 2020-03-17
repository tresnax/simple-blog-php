
<?php
include "koneksi.php";
?>

<h3>Detail Berita</h3>
<?php
	$query_ambil_berita	= mysqli_query($conn, "SELECT * FROM berita WHERE id_berita = '".$_GET['id']."'"); //query ambil data berita.
	$data_berita = mysqli_fetch_array($query_ambil_berita); 
?>

<h5 style="margin-bottom: 0px"><?php echo $data_berita['judul']; ?></h5>
<small>Ditulis oleh : <?php echo $data_berita['penulis']; ?>, pada : <?php echo $data_berita['tanggal_posting']; ?></small>
<p>

<?php 
	if (is_file("gambar/".$data_berita['gambar']) == TRUE) {
?>
<img src="gambar/<?php echo $data_berita['gambar']; ?>" style="width: 300px; height: 275px; margin: 0 10px 10px 0; display: inline; float: left">
<?php 
	} 
?>

<?php echo $data_berita['isi_berita']; ?></p>
<hr>

<a href="index.php">Back</a>


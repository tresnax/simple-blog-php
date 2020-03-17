<?php
include "koneksi.php";
?>
<html>
<head>
<title>Data berita</title>
</head>

<body>
<h3>Berita Terbaru</h3>
<h4>Berita ini di ambil dari tempat yang berbeda</h4>

<?php
    $query_ambil_berita	= mysqli_query($conn,"SELECT * FROM berita"); //query ambil data berita.
    while ($data_berita = mysqli_fetch_array($query_ambil_berita)) {
    //perulangan untuk menampilkan berita 
?>

<h5 style="margin-bottom: 0px"><?php echo $data_berita['judul']; ?></h5>
<small>Ditulis oleh : <?php echo $data_berita['penulis']; ?>, pada : <?php echo $data_berita['tanggal_posting']; ?></small>

<p>
<?php 
    if (is_file("gambar/".$data_berita['gambar']) == TRUE) {
?>

<img src="gambar/<?php echo $data_berita['gambar']; ?>" style="width: 100px; height: 75px; margin: 0 10px 10px 0; display: inline; float: left">
<?php 
    } 
?>

<?php echo substr($data_berita['isi_berita'], 0, 300); ?> ... 
<a href="berita_detil.php?id=<?php echo $data_berita['id_berita']; ?>">selengkapnya</a>
</p>

<hr style="border: dashed 1px #e9e9e9">
<?php 
    }
    //penutup perulangan while
?>
</body>
</htmL>
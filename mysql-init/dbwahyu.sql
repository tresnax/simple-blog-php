-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 17, 2020 at 06:08 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbwahyu`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `kategori` enum('Sekolah','Guru','Siswa') NOT NULL,
  `judul` varchar(200) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `isi_berita` text NOT NULL,
  `tanggal_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `kategori`, `judul`, `penulis`, `isi_berita`, `tanggal_posting`, `gambar`) VALUES
(1, 'Sekolah', 'Van Dijk Beri Timnas Rekomendasi Strategi', 'akhwan', 'Jakarta - Penyerang tim nasional Indonesia, Sergio van Dijk, memberikan beberapa rekomendasi soal strategi permainan jelang laga melawan Belanda. Namun, dia juga mengakui bahwa ada beberapa kelemahan yang sulit dihindari timnas.\r\n<br><br>\r\nIndonesia akan melakoni laga persahabatan melawan Belanda di Stadion Utama Gelora Bung Karno, Jumat (7/56/2013). Sejauh ini, pelatih Jacksen F. Tiago menerangkan bahwa semua pemain berada dalam kondisi siap main.\r\n<br><br>\r\nJacksen juga mengatakan bahwa dia sudah berdiskusi dengan para pemain terkait strategi yang akan digunakan. Dan hal ini dibenarkan oleh Van Dijk. Bomber Persib Bandung itu bahkan memberikan beberapa rekomendasi.\r\n<br><br>\r\n\"Saya kasih keterangan teknis permainan yang cepat. Sulit untuk mengalahkan mereka. Level mereka jauh di atas,\" ujarnya.\r\n<br><br>\r\n\"Saya menyarankan timnas bermain dengan organisasi bagus sebagai solusi. Timnas Belanda itu kelas dunia, jauh dari kita.\"\r\n<br><br>\r\nHanya saja, waktu persiapan yang mepet diakuinya sedikit menyulitkan.\r\n<br><br>\r\n\"Kalau kita main bagus dan disiplin ada peluang.\"\r\n<br><br>\r\n\"Sudah begitu waktu dua tiga hari itu sulit untuk membuat solid tim.\"\r\n<br><br>\r\n(fem/cas)\"\"\"', '2013-06-06', 'satu.jpg'),
(2, 'Sekolah', 'Agen: Higuain Belum Capai Kesepakatan dengan Klub Lain', 'akhwan', 'Jakarta - Kabar kepergian Gonzalo Higuain dari Real Madrid kian santer berhembus. Tapi, agen si pemain, Nico, membantah bahwa pemain timnas Argentina itu sudah mencapai kesepakatan dengan klub lain.\r\n<br><br>\r\nSetelah musim 2012-2013 berakhir, Higuain menyatakan keinginannya untuk hengkang dari El Real. Pihak Madrid pun mengkonfirmasi bahwa mereka juga lebih memilih mempertahankan Karim Benzema daripada Higuain.\r\n<br><br>\r\nJuventus dan Arsenal dispekulasikan ada di posisi terdepan untuk mendapatkan tanda tangan Higuain. Bahkan kesepakatan kabarnya telah dicapai dengan salah satu klub.\r\n<br><br>\r\nTerkait kabar itu, Nico, agen sekaligus saudara striker 25 tahun itu memberikan bantahan.\r\n<br><br>\r\n\"Saat ini belum ada kesepakatan dengan klub lain,\" terang Nico seperti dilansir oleh Sky Sports.\r\n<br><br>\r\n\"Untuk permulaan, mereka seharusnya memulai pembicaraan dengan Real Madrid terlebih dulu. Semua kemungkinan belum tertutup,\" imbuhnya.\r\n<br><br>\r\n\r\n(cas/cas)\"\"', '2013-06-06', 'dua.jpg'),
(3, 'Guru', 'Arsenal Akan ke Indonesia, Ljungberg Temui Fans di Jakarta', 'akhwan', 'Jakarta - Arsenal akan datang ke Indonesia bulan depan dan bertanding di Stadion Gelora Bung Karno. Salah satu mantan pemain terkenal mereka, Fredrik Ljungberg, lebih dulu menyapa fans The Gunners.\r\n<br><br>\r\nBintang Swedia itu tiba di ibukota hari Rabu kemarin dan malamnya mengunjungi Arsenal Soccer School Indonesia di Ciputat, Tangerang Selatan. Ia menjadi duta eks klubnya yang akan melakukan tur pramusim di Asia termasuk di Indonesia.\r\n<br><br>\r\nHari ini, Kamis (6/6/2013), Ljungberg bertemu pers dan penggemarnya di GOR Bulungan, Jakarta Selatan. Ia tampil santai, mengenakan t-shirt berlogo Arsenal dan bercelana jeans.\r\n<br><br>\r\nSepanjang acara ia tampak bersahabat, nyaris tak pernah berhenti tersenyum. Setiap kali ada yang meminta foto, ia melayani dengan ramah.\r\n<br><br>\r\n\"Saya sangat senang dan bangga bisa ke Jakarta. Ini kali kedua saya ke sini (sebelumnya saat menjadi duta tur trofi Liga Champions pada Mei lalu -- Red) dan saya selalu mendapatkan sambutan yang luar biasa dari fans Arsenal,\" ujar Ljungberg.\r\n<br><br>\r\n\"Saya tahu, saat kami bertanding di sini bulan depan, kami akan mendapatkan pengalaman yang menyenangkan. Ini kesempatan yang bak untuk memperkenalkan Arsenal di Indonesia.\"\r\n<br><br>\r\nTim London utara itu akan bertanding melawan tim Indonesia di GBK pada 14 Juli mendatang. Mereka sudah mempersiapkan tur tersebut, antara lain dengan memunculkan video sejumlah pemainnya bermain gamelan di markas latihan mereka.\r\n<br><br>\r\nSaat diputarkan video tersebut, Ljungberg tersenyum-senyum menyaksikannya di layar televisi. Ia sempat bertanya, apa gerangan yang dimainkan oleh Per Mertesacker, Nacho Monreal, Gervinho, Bacary Sagna, dan Laurent Koscielny tersebut.\r\n<br><br>\r\nSetelah dijawab pemandu acara, bahwa gamelan adalah salah satu musik tradisional Indonesia, ia pun mengangguk-angguk. \"Good. Nice,\" ujarnya.\r\n<br><br>\r\nSetelah menyelesaikan kariernya di Arsenal pada 2007, Ljungberg sempat bermain untuk West Ham United, Seattle Sounders FC, Chicago Fire, Celtic, dan terakhir di klub Jepang, Shimizu S-Pulse, sampai akhirnya pensiun tahun lalu, dalam usia 35.\r\n<br><br>\r\nSetelah sesi ngobrol, pria kelahiran 16 April 1977 itu bermain mini soccer bersama perwakilan The Jakmania, plus pemain nasional Ponaryo Astaman.\r\n<br><br>\r\nPuluhan suporter Arsenal yang datang ke Bulungan bernyanyi-nyanyi untuk Ljungberg sampai sang bintang meninggalkan tempat tersebut.\"', '2013-06-06', 'tiga.jpg'),
(4, 'Siswa', 'Mengintip Pembuatan Video Arsenal Main Gamelan', 'akhwan', 'London - Dalam rangka mempersiapkan kunjungannya ke Indonesia pada Juli mendatang, para pemain Arsenal berlatih bermain gamelan. Bagimana Per Mertesacker dkk. melakukannya? Yuk, intip pembuatan videonya!\r\n<br><br>\r\nPada video berdurasi dua menit satu detik yang diunggah di situs resmi Arsenal, dibuka dengan penampakan pusat latihan klub. Para kru kemudian mulai bekerja dengan mempersiapkan beragam alat kelengkapan syuting dan perangkat gamelan.\r\n<br><br>\r\nSutradara mengarahkan para pemain untuk mengambil posisi di instrumen yang sudah ditentukan. Mertesacker dan Gervinho memainkan instrumen bonang, Nacho Monreal pada gong, Laurent Koscielny pada gendang dan Bacary Sagna pada kenong.\r\n<br><br>\r\nNah, agar musik yang dimainkan bisa mengalun seirama, maka kelima pemain itu menerima \'kursus singkat\' dari John Pawson dan Manuel Jimenez, yang di dalam video memainkan instrumen saron dan duduk paling depan.\r\n<br><br>\r\nDua pemain Arsenal lainnya. Wojciech Szczesny dan Francis Coquelin tampak \'meramaikan\' pembuatan video itu. Tidak, mereka bukan tiba-tiba ikut-ikutan memainkan gamelan melainkan sekadar ikut menonton proses syuting.\r\n<br><br>\r\nSetelah syuting selesai dilakukan, para pemain diperbolehkan meninggalkan lokasi. Namun, Sagna masih mencoba memainkan kenongnya sementara Mertesacker--berdiri sambil memegangi pinggulnya-- terlihat capek karena kelamaan duduk.\r\n<br><br>\r\nThe Gunners akan menggelar tur pramusim ke Asia dengan salah satunya mengunjungi Indonesia pada 14 Juli di Stadion Gelora Bung Karno, Jakarta.\r\n\"', '2013-06-06', 'empat.jpg'),
(5, 'Sekolah', 'Robin Van Persie Beberkan Kisah Kepindahan Dari Arsenal', 'akhwan', 'Robin van Persie berpanjang lebar menceritakan proses kepindahannya dari Arsenal ke Manchester United yang penuh liku sebelum akhirnya terwujud dengan transfer senilai £24 juta tahun lalu.\r\n<br><br>\r\nSisanya adalah sejarah. Van Persie tampil prima di paruh pertama Liga Primer Inggris musim 2012/13 dan kemudian mempersembahkan gelar juara untuk United. Secara individual, Van Persie juga terbilang sukses dengan menggondol sepatu emas sebagai topskor dan masuk dalam tim terbaik liga musim ini.\r\n<br><br>\r\nTernyata, tidak mudah untuk meraih semuanya. Sebelum tiba di Old Trafford, Van Persie harus menunggu persetujuan Arsenal untuk melepasnya.\r\n<br><br>\r\n\"Memang sulit karena bukan hanya saya yang memutuskan ke mana saya ingin bermain,\" ujar pemain 29 tahun ini kepada MUTV.\r\n<br><br>\r\n\"Nasib saya juga tergantung pada bekas klub saya dan bagaimana mereka menilainya. Tentu saja kita selalu harus terlibat dalam semacam permainan yang dimainkan para direksi.\"\r\n<br><br>\r\n\"Rasanya seperti menaiki rollercoaster. Satu hari situasi tampak lancar dan di hari lain memburuk. Kita tidak pernah tahu apa yang harus diharapkan karena keadaan berubah begitu cepat. Biasanya tergantung pada si pemain dan dua tim, tetapi untuk kasus saya, ada dua tim lain yang juga terlibat.\"\r\n<br><br>\r\n\"Satu tim adalah Manchester City dan satu lagi Juventus. Agak rumit, tapi saya selalu menginginkan kepindahan ini sejak awal. Saya dan Sir Alex Ferguson tahu proses transfer ini akan berliku, tapi saya rasa ini membuktikan kalau kita benar-benar menginginkan sesuatu, tidak ada yang mustahil. Saya bahagia akhirnya terwujud.\"\r\n<br><br>\r\nVan Persie kemudian menceritakan bagaimana dia mengetahui untuk kali pertama   mengetahui kepastian transfer.\r\n<br><br>\r\n\"Saya berada di bis untuk bermain di timnas Belanda. Seharusnya tidak boleh ada ponsel yang diizinkan, tapi saya tetap membawanya untuk berjaga-jaga,\" sambungnya.\r\n<br><br>\r\n\"Kemudian saya mendengar ada getaran, saya melihat ponsel, dan ada pesan dari agen saya bertuliskan, \'Kesepakatan tercapai dan nikmati pertandingan\'. Saya luar biasa lega. Saya juga tidak didenda karena menggunakan ponsel! Agak aneh juga karena komentator mengumumkannya di televisi, padahal saya kira hanya saya yang mengetahuinya. Sejak saat itu segalanya berjalan begitu cepat.\"\r\n<br><br>\r\n\"Hari berikutnya, saya datang untuk menjalani tes medis. Saya pergi melalui kereta dari Brussels ke London untuk melakukan hal-hal yang diperlukan dan kemudian pergi ke Manchester. Satu setengah hari berikutnya sangat sibuk. Saya menjalani sesi latihan pertama dan dua hari kemudian bertanding melawan Everton.\"\r\n<br><br>\r\n\"Ketika berusia 12 tahun dan pergi ke sekolah menengah, biasanya kita bangun pagi-pagi dan gugup untuk bertemu kawan-kawan baru di sekolah. Rasanya mirip sekali, meski saya sudah kenal beberapa di antaranya.\"\r\n<br><br>\r\n\"Rasanya seperti itu. Saya datang, menyalami semua orang, kami bercanda dan tersenyum, jadi rasanya sudah positif sejak hari pertama.\"', '2013-06-06', 'lima.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(5) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `nama_lengkap`, `username`, `password`, `level`) VALUES
(1, 'nuris akbar', 'nuris', '5f4dcc3b5aa765d61d8327deb882cf99', 'admin'),
(2, 'John Doe', 'john', '5f4dcc3b5aa765d61d8327deb882cf99', 'admin'),
(3, 'Tresna', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

<?php
$server 	= "data_blog";	// Change this to correspond with your database port
$username 	= "root";			// Change if use webhost online
$password 	= "c0c0d0tb4u";
$DB 		= "dbwahyu";			// database name


$conn=mysqli_connect($server, $username, $password, $DB);
 
if ($conn->connect_error) {
				die("Connection failed: " . $conn->connect_error);
			} 
?>
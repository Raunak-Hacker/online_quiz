<?php
require 'db.php';
session_start();
$opt = $_POST['opt'];
$que = $_POST['que'];
$sub = $_POST['sub'];
array_push($_SESSION["answers"], $opt);
// print_r( $_SESSION['answers']);
$sql = "SELECT * FROM $sub WHERE id = '" . $que . "'";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($result);

if ($opt == $row['ans']) {
  echo 1;
} else {
  echo 0;
}

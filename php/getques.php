<?php
require 'db.php';
session_start();
$q = intval($_GET['q']);
$sub = $_GET['sub'];
$sqli = "SELECT COUNT(*) FROM $sub";
$resulti = mysqli_query($conn, $sqli);
$count = mysqli_fetch_assoc($resulti)['COUNT(*)'];
if ($q <= $count) {
  $sql = "SELECT * FROM $sub WHERE id = '" . $q . "'";
  $result = mysqli_query($conn, $sql);
  while ($row = mysqli_fetch_array($result)) {
    $ans = $row['ans'];
    echo "<div id='question'>";
    echo "<h2 id='questionNo'>" . $row['Id'] . ".</h2>";
    echo  "<h2 id='questionText'>" . nl2br($row['Question']) . "</h2>";
    echo "</div>";
    echo "<div id='optionList'>";
    echo  "<h4 class='choice_que' onclick='optSel(1)' id='option1'>" . $row['opt1'] . "</h4>";
    echo  "<h4 class='choice_que' onclick='optSel(2)' id='option2'>" . $row['opt2'] . "</h4>";
    echo  "<h4 class='choice_que' onclick='optSel(3)' id='option3'>" . $row['opt3'] . "</h4>";
    echo  "<h4 class='choice_que' onclick='optSel(4)' id='option4'>" . $row['opt4'] . "</h4>";
    echo "</div>";
    echo "<div id='answersSection'>";
    echo "<h3 id='total_correct'>" . $q . " Of <span id='count'>" . $count . "</span> Questions</h3>";
    echo "<h6></h3>";
    echo "</div>";
    if ($_SESSION["check"]) {
      echo "<style> #option" . $_SESSION["answers"][$q - 1] . " { background-color: 	#000000 ! important; } </style>";
      echo "<style> #option" . $ans . " { background-color: 	#7CFC00 ! important; } </style>";
    }
  }
}
mysqli_close($conn);

<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "inf_project";

$db = mysqli_connect($servername, $username, $password, $dbname);

if (!$db) {
    exit("Connection to the mysql failed: " . mysqli_connect_error());
}

$ud_termName = $_POST['termName'];
$ud_termGroup = $_POST['termGroup'];
$ud_termDescription = $_POST['termDescription'];

$sql = 'insert into terms (term, description, idGroup) values ("' . $ud_termName . '", "' . $ud_termDescription . '", "' . $ud_termGroup . '");';

if ($db->query($sql) === TRUE) {
} else {
    echo "Error: " . $sql . "<br>" . $db->error;
}

$db->close();
?>
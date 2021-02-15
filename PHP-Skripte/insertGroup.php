<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "inf_project";

$db = mysqli_connect($servername, $username, $password, $dbname);

if (!$db) {
    exit("Connection to the mysql failed: " . mysqli_connect_error());
}

$ud_groupName = $_POST['groupName'];

$sql = 'insert into `group` (`name`) values ("' . $ud_groupName . '");';

if ($db->query($sql) === TRUE) {
} else {
    echo "Error: " . $sql . "<br>" . $db->error;
}

$db->close();
?>
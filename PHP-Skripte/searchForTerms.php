<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "inf_project";

$db = mysqli_connect($servername, $username, $password, $dbname);

if (!$db) {
    exit("Connection to the mysql failed: " . mysqli_connect_error());
}
$ud_input = $_GET['input'];

$sql = 'select idTerms, term, description from `terms` where description like "%' . $ud_input . '%";';

$result = mysqli_query($db, $sql);

if (is_null($result)) {

} else {
    while ($data = mysqli_fetch_array($result)) {
        echo '<div class="flip" id="' . $data['idTerms'] . '">' . $data['term'] . '</div>';
        echo '<div class="panel">' . $data['description'] . '</div>';
    }
}

$db->close();
?>
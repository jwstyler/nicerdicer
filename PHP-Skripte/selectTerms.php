<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "inf_project";

$db = mysqli_connect($servername, $username, $password, $dbname);

if (!$db) {
    exit("Connection to the mysql failed: " . mysqli_connect_error());
}
$group = $_GET['nav'];

$sql = "select terms.idTerms, terms.term, terms.description from `terms` join `group` on `group`.idGroup = `terms`.idGroup where `group`.name = '" . $group ."';";

$result = mysqli_query($db, $sql);


while ($data = mysqli_fetch_array($result)) {
    echo'<div class="flip" id="' . $data['idTerms'] . '">' . $data['term'] . '</div>';
    echo '<div class="panel">' . $data['description'] . '</div>';
}

$db->close();
?>

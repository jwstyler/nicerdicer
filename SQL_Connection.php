<?php
/** connection to the database */
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "inf_project";

$db = mysqli_connect($servername, $username, $password, $dbname);

if (!$db) {
    exit("Connection to the mysql failed: " . mysqli_connect_error());
}

/** get the variables */
$ud_input = $_GET['input'];

/** build the select */
$sql = 'select idTerms, term, description from `terms` where description like "%' . $ud_input . '%";';

/** get the results */
$result = mysqli_query($db, $sql);

/** give out the results option 1 */
if (is_null($result)) {

} else {
    while ($data = mysqli_fetch_array($result)) {
        echo '<div class="flip" id="' . $data['idTerms'] . '">' . $data['term'] . '</div>';
        echo '<div class="panel">' . $data['description'] . '</div>';
    }
}

/** give out the results option 2 */
while ($data = mysqli_fetch_array($result)) {
    echo'<div class="flip" id="' . $data['idTerms'] . '">' . $data['term'] . '</div>';
    echo '<div class="panel">' . $data['description'] . '</div>';
}

$db->close();
?>
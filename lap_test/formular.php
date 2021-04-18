<html>
    <head>
        <meta charset="utf-8">
        <title>SearchPage</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Stylesheets -->
        <link rel="stylesheet" type="text/css" href="CSS/mainStyle.css">
    </head>
        
    <body>
        <div>
            <a href="/index.php">Startseite</a>
        </div>
<?php


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "fahrrad";

error_reporting(0);

$db = mysqli_connect($servername, $username, $password, $dbname);

if (!$db) {
    exit("Connection to the mysql failed: " . mysqli_connect_error());
}
$group = $_GET['searchversion'];

$sql = "select Fahrradnr ,Bezeichnung ,Rahmennummer ,Tagesmietpreis ,Wert ,date_format(Kaufdatum, '%d.%m.%Y') as Kaufdatum from fahrraeder;";

$result = mysqli_query($db, $sql);


if (mysqli_num_rows($result) == 0) {
  echo "Die Suche ergab kein Treffer!";
}
else {


echo "<table><tr><th>Fahrradnr</th><th>Bezeichnung</th><th>Rahmennummer</th><th>Tagesmietpreis</th><th>Wert</th><th>Kaufdatum</th></tr>";
while ($data = mysqli_fetch_array($result)) {
    echo "<tr><td>".$data['Fahrradnr']."</td><td>".$data['Bezeichnung']."</td><td>".$data['Rahmennummer']."</td><td>".$data['Tagesmietpreis']." €</td><td>".$data['Wert']." €</td><td>".$data['Kaufdatum']."</td></tr>";


}

echo "</table>";
}
$db->close();

?>

</body>
</html>
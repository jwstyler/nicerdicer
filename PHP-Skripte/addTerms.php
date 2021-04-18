<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "inf_project";

$db = mysqli_connect($servername, $username, $password, $dbname);

if (!$db) {
    exit("Connection to the mysql failed: " . mysqli_connect_error());
}
?>

<!doctyp html>
<html lang="de">
<head>
    <meta charset="utf-8">
    <title>addTerms - DatenbankProjekt</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Stylesheets -->
    <link rel="stylesheet" type="text/css" href="CSS/mainStyle.css">
    <!-- JavaScript -->
    <script type="text/javascript" src="JS-Skripte/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="JS-Skripte/main.js"></script>

</head>

<body>
<button id="home">Startseite</button>

<div class="clear"></div>

<div class="group1">
    <p>Begriff anlegen</p>
    <div style="float: left; margin: 5px; padding: 5px;">
        <input id="term-name" maxlength="45" placeholder="Begriff eingeben">
        <div class="clear_uv"></div>
        <select id="term-group">
            <option value="99999">Bitte Gruppe auswählen...</option>
            <?php
            $sql = "select idGroup, name from `group` order by name asc";

            $result = mysqli_query($db, $sql);

            while ($data = mysqli_fetch_array($result)) {
                echo '<option class="group" value="' . $data['idGroup'] . '">' . $data['name'] . '</option>';
            }
            ?>
        </select>
        <div class="clear_uv"></div>
        <button id="term-btn">Einfügen</button>
    </div>

    <div style="float: left; margin: 5px; padding: 5px;">
        <textarea id="term-description" cols="40" rows="11" maxlength="1000"
                  placeholder="Erklärung eingeben (max. 1000 Zeichen)"></textarea>
    </div>
</div>

<div class="group1">
    <p>Gruppe anlegen</p>
    <form>
        <div style="float: left; margin: 5px; padding: 5px;">
            <input id="group-name" maxlength="45" placeholder="Gruppenname eingeben">
            <button id="group-add-btn">Einfügen</button>
    </form>

</div>

<?php
$db->close();
?>
</body>
</html>
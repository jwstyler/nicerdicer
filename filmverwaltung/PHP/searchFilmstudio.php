<!DOCTYPE html>
<html lang="de">
    <head>
        <meta charset="utf-8">
        <title>Filmstudio</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Stylesheets -->
        <link rel="stylesheet" type="text/css" href="../CSS/mainstyle.css">
        <!-- JavaScript -->
        <script type="text/javascript" src="../JS/jquery-3.5.1.min.js"></script>
        <script type="text/javascript" src="../JS/main.js"></script>
    </head>
    <body>
        <div>
            <a type="button" href="/index.php"><button>Hauptseite</button></a>
        </div>

    <?php
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "filmverwaltung";

        error_reporting(0);

        $db = mysqli_connect($servername, $username, $password, $dbname);

        if (!$db) {
            exit("<div class='alert'>Connection to the mysql failed: " . mysqli_connect_error() . "</div>");
            
        }
        
        $search = $_GET['filmtitelToSearch'];

        $sql = "select ft.filmtitel ,date_format(ft.launchDate, '%d.%m.%Y') as launchDate ,fs.filmstudio from filmstudio fs join filmtitel ft on ft.idFilmstudio = fs.idFilmstudio where fs.filmstudio like '%".$search."%' order by ft.launchDate asc;";
        $sql1 = "select fs.filmstudio from filmstudio fs where fs.filmstudio like '%".$search."%';";

        $result = mysqli_query($db, $sql);
        $result1 = mysqli_query($db, $sql1);

        $rows = mysqli_num_rows($result);


        if ($rows == 0) {
        echo "<div class='alert'>Die Suche ergab keinen Treffer!</div>";
        }
        else {
            echo "<div><p><b>Suchergebnis</b></p>";
            echo "<p>Gesuchte Produktonsfirma: <b>" . $search . "</b></p>";
            echo "<p>Gefundene Produktionsfirma: <b>";
            while ($data = mysqli_fetch_array($result1)) {
                echo $data['filmstudio'] . ", ";
            };
            echo "</b></p><p>Gefundene Filmtitel: <b>" . $rows . "</b></p></div>";

            echo "<table><tr><th>Filmtitel</th><th>Erscheinungsdatum</th><th>Filmstudio</th></tr>";
            while ($data = mysqli_fetch_array($result)) {
                echo "<tr><td>".$data['filmtitel']."</td><td>".$data['launchDate']."</td><td>".$data['filmstudio']."</td></tr>";
            }

            echo "</table>";
        }

        $db->close();

    ?>


    </body>
</html>
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
    <title>DatenbankProjekt</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Stylesheets -->
    <link rel="stylesheet" type="text/css" href="CSS/mainStyle.css">
    <!-- JavaScript -->
    <script type="text/javascript" src="JS-Skripte/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="JS-Skripte/main.js"></script>

</head>

<body>

<div class="nav" id="nav">
    <?php
    $sql = "select idGroup, name from `group` order by name asc";

    $result = mysqli_query($db, $sql);

    while ($data = mysqli_fetch_array($result)) {
        echo '<span class="group" id="group' . $data['idGroup'] . '">' . $data['name'] . '</span>';
    }
    ?>
    <span class="group" id="insert-nav"
          style="background-color: var(--main-sec-color-trans);">Begriff/Gruppe einfügen</span>
    <span class="group" id="search-nav" style="background-color: var(--main-sec-color-trans);">Begriff suchen</span>
</div>

<div class="clear"></div>

<div class="terms" id="terms">
    <div class="flip" id="flip">Bitte wähle oberhalb einen Begriff aus . . .</div>

</div>

<script type="text/javascript">
    var selected = 0;

    /** display the description of the term */
    $(document).delegate('.flip', 'click', function () {
        if (selected != $(this).attr('id')) {
            $('[id=' + selected + ']').next('.panel').slideUp('fast');
        }
        selected = $(this).attr('id');
        $(this).next('.panel').slideToggle("");
    });

</script>

<?php
$db->close();
?>
</body>
</html>
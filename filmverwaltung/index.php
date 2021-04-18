<!DOCTYPE html>
<html lang="de">
    <head>
        <meta charset="utf-8">
        <title>Filmverwaltung</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Stylesheets -->
        <link rel="stylesheet" type="text/css" href="CSS/mainstyle.css">
        <!-- JavaScript -->
        <script type="text/javascript" src="JS/jquery-3.5.1.min.js"></script>
        <script type="text/javascript" src="JS/main.js"></script>
    </head>
    <body>
        <div>
            <h1>Filmverwaltung</h1>
            <p>Es sind nur Buchstaben erlaubt (keine zahlen oder Sonderzeichen)!</p>
        </div>

        <div class="middle">
            <h3>Suche nach einem Filmtitel:</h3>
            <form action="PHP/searchFilmstudio.php" methode="get">
                <input type="text" id="filmtitelToSearch" name="filmtitelToSearch" placeholder="Filmtitel" pattern="[A-Za-z]+">
                <input type="submit" value="Suchen">
            </form>
        </div>
        <div class="middle">
            <h3>Suche nach einem Schauspieler:</h3>
            <form action="PHP/searchSchauspieler.php" methode="get">
                <input type="text" id="schauspielerToSearch" name="schauspielerToSearch" placeholder="Schauspieler" pattern="[A-Za-z]+">
                <input type="submit" value="Suchen">
            </form>
        </div>

    </body>
</html>
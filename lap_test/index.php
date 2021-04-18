<html>
    <head>
        <meta charset="utf-8">
        <title>MainPage</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Stylesheets -->
        <link rel="stylesheet" type="text/css" href="CSS/mainStyle.css">
    </head>
        
    <body>
        <div>
            <p>Hello</p>
        </div>

        <form action="formular.php" method="GET">
            <input type="radio" id="all" name="searchversion" value="all" checked="checked">
            <lable for="all">All</lable><br>
            <input type="radio" id="month" name="searchversion" value="month">
            <lable for="month">Currrent Month</lable><br>
            <input type="submit" value="Search">


        </form>

    </body>

</html>
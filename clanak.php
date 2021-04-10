<!DOCTYPE html>
<html>
<head>

    <title>Article</title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>
    <header><a href="index.php"><img class= "header-img" alt="Article image" src="Le_Parisien_logo.svg" height="50"></a></header>
    <nav>
        <ul>
            <li><a href="index.php">HOME</a></li>
            <li><a href="kategorija.php?id=sport">SPORT</a></li>
            <li><a href="kategorija.php?id=kultura">KULTURA</a></li>
            <li><a href="administracija.php">ADMINISTRACIJA</a></li>
        </ul>
    </nav>
    <main>

        <?php
            session_start();
            $dbc = mysqli_connect('localhost','root','','vijesti') or
            die("Connection failed: ". mysqli_connect_error());

            $id=$_GET['id'];

            $query = 'SELECT * FROM clanak WHERE id = '.$id.';';

            $result = mysqli_query($dbc,$query) or
                die("Error querying database"); 

            while($row = mysqli_fetch_array($result)) {
                $naslov = $row['naslov'];
                $sazetak = $row['sazetak'];
                $sadrzaj = $row['sadrzaj'];
                $kategorija = $row['kategorija'];
                $arhiva = $row['arhiva'];
                $datum = $row['datum'];
                $slika = "img/".$row['slika'];
            }
        
        
            echo"<h1>" . $naslov . "</h1>";
            echo "<p class = 'date'>" . $datum . "</p>";
            echo "<img class = 'title-img' alt='Title image' src='" .$slika. "'>";
            echo "<h3>" . $sazetak . "</h3>";
            echo "<p>" . $sadrzaj . "</p>";

            mysqli_close($dbc);
        ?>
    </main>
    <footer>
        <p>Marin Jurišić, mjurisic@tvz.hr, 2020.</p>
    </footer>
</body>
</html>
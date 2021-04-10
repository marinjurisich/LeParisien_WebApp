<!DOCTYPE html>
<html>
<head>

    <title>Article</title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>
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

            if(isset($_POST["send"])){
                $naslov = $_POST["naslov"];
                $sazetak = $_POST["sazetak"];
                $clanak = $_POST["clanak"];
                $kategorija = $_POST["kategorija"];
                $slika = $_FILES["slika"]["name"];
                if(isset($_POST["arhiva"])){
                    $arhiva = 1;
                }else $arhiva = 0;
            }

            $datum = date("d M Y");

            $query = "INSERT INTO clanak(naslov,sazetak,sadrzaj,kategorija,arhiva,datum,slika)
                 VALUES('$naslov', '$sazetak','$clanak','$kategorija','$arhiva','$datum','$slika')";

            $result = mysqli_query($dbc,$query) or
            die("Error querying database"); 

            $target = 'img/'.$slika;
            move_uploaded_file($_FILES["slika"]["tmp_name"], $target);


            echo"<h1>" . $naslov . "</h1>";
            echo "<p class = 'date'>" . date('d M Y') . "</p>";
            echo "<img class = 'title-img' alt='Title image' src='" .$target. "'>";
            echo "<h3>" . $sazetak . "</h3>";
            echo "<p>" . $clanak . "</p>";

            mysqli_close($dbc);

        ?>    
    </main>
    <footer>
        <p>Marin Jurišić, mjurisic@tvz.hr, 2020.</p>
    </footer>
</body>
</html>


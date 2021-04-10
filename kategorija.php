<!DOCTYPE html>
<html>
<head>

    <title>Le Parisien</title>
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

            $kategorija=$_GET['id'];

            $query = "SELECT * FROM clanak WHERE arhiva=0 AND kategorija='$kategorija' ORDER BY id DESC";

            $result = mysqli_query($dbc,$query) or
                die("Error querying database"); 

            echo '<h2>'.strtoupper($kategorija).'</h2><div class="first">';

            while($row = mysqli_fetch_array($result)) {
                
                $id = $row['id'];
                $naslov = $row['naslov'];
                $sazetak = $row['sazetak'];
                $sadrzaj = $row['sadrzaj'];
                $arhiva = $row['arhiva'];
                $datum = $row['datum'];
                $slika = "img/".$row['slika'];
            

            
            echo '
            <article class="cat">
                <img  alt="Article image" width = "250" height="150" src="'.$slika.'">
                <h3 ><a href=clanak.php?id="'.$id.'"> '.$naslov.'</a></h3>
            </article>';

            }

            echo'</div>';

            mysqli_close($dbc);
        ?>
        
    </main>
    <footer>
        <p>Marin Jurišić, mjurisic@tvz.hr, 2020.</p>
    </footer>
</body>
</html>
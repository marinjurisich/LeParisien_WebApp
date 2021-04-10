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

            $query = "SELECT * FROM clanak WHERE arhiva=0 AND kategorija='sport' ORDER BY id DESC LIMIT 3 ";

            $result = mysqli_query($dbc,$query) or
                die("Error querying database"); 

            while($row = mysqli_fetch_array($result)) {
                $id[] = $row['id'];
                $naslov[] = $row['naslov'];
                $sazetak[] = $row['sazetak'];
                $sadrzaj[] = $row['sadrzaj'];
                $kategorija[] = $row['kategorija'];
                $arhiva[] = $row['arhiva'];
                $datum[] = $row['datum'];
                $slika[] = "img/".$row['slika'];
            
            }
            
            echo '<h2>SPORT</h2>
            <article class="first">
                <img class="article-lft" alt="Article image" width = "250" height="150" src="'.$slika[0].'">
                <h3 class="article-lft"><a href=clanak.php?id="'.$id[0].'"> '.$naslov[0].'</a></h3>
            </article>
    
            <article>
                <img class="article-mid" alt="Article image" width = "250" height="150" src="'.$slika[1].'">
                <h3 class="article-mid"><a href=clanak.php?id="'.$id[1].'"> '.$naslov[1].'</a></h3>
            </article>
    
            <article>
                <img class="article-rgt" alt="Article image" width = "250" height="150" src="'.$slika[2].'">
                <h3 class="article-rgt"><a href=clanak.php?id="'.$id[2].'"> '.$naslov[2].'</a></h3>
            </article>';

            $query = "SELECT * FROM clanak WHERE arhiva=0 AND kategorija='kultura' ORDER BY id DESC LIMIT 3";

            $result = mysqli_query($dbc,$query) or
                die("Error querying database"); 

            while($row = mysqli_fetch_array($result)) {
                $id[] = $row['id'];
                $naslov[] = $row['naslov'];
                $sazetak[] = $row['sazetak'];
                $sadrzaj[] = $row['sadrzaj'];
                $kategorija[] = $row['kategorija'];
                $arhiva[] = $row['arhiva'];
                $datum[] = $row['datum'];
                $slika[] = "img/".$row['slika'];
            
            }
    
            echo '<h2>KULTURA</h2>
            <article class="first">
                <img class="article-lft" alt="Article image" width = "250" height="150" src="'.$slika[3].'">
                <h3 class="article-lft"><a href=clanak.php?id="'.$id[3].'"> '.$naslov[3].'</a></h3>
            </article>
    
            <article>
                <img class="article-mid" alt="Article image" width = "250" height="150" src="'.$slika[4].'">
                <h3 class="article-mid"><a href=clanak.php?id="'.$id[4].'"> '.$naslov[4].'</a></h3>
            </article>
    
            <article>
                <img class="article-rgt" alt="Article image" width = "250" height="150" src="'.$slika[5].'">
                <h3 class="article-rgt"><a href=clanak.php?id="'.$id[5].'"> '.$naslov[5].'</a></h3>
            </article>';

            
            mysqli_close($dbc);
        ?>
        
    </main>
    <footer>
        <p>Marin Jurišić, mjurisic@tvz.hr, 2020.</p>
    </footer>
</body>
</html>
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
        </ul>
    </nav>
    <main>

        <?php
            session_start();

            $dbc = mysqli_connect('localhost','root','','vijesti') or
            die("Connection failed: ". mysqli_connect_error());

            if(isset($_SESSION['$username']) &&  $_SESSION['$level'] == 1 ){
                $uspjesnaPrijava = true;
                $admin = true;
            }else{
                $uspjesnaPrijava = false;
            }
            // Provjera da li je korisnik došao s login forme
            if (isset($_POST['prijava'])) {
                // Provjera da li korisnik postoji u bazi uz zaštitu od SQL injectiona
                $prijavaImeKorisnika = $_POST['username'];
                $prijavaLozinkaKorisnika = $_POST['lozinka'];
                $sql = "SELECT username, lozinka, razina FROM korisnik
                WHERE username = ?";
                $stmt = mysqli_stmt_init($dbc);
                if (mysqli_stmt_prepare($stmt, $sql)) {
                    mysqli_stmt_bind_param($stmt, 's', $prijavaImeKorisnika);
                    mysqli_stmt_execute($stmt);
                    mysqli_stmt_store_result($stmt);
                }
                mysqli_stmt_bind_result($stmt, $imeKorisnika, $lozinkaKorisnika, $levelKorisnika);
                mysqli_stmt_fetch($stmt);
                //Provjera lozinke
                if (password_verify($_POST['lozinka'], $lozinkaKorisnika) && mysqli_stmt_num_rows($stmt) > 0) {
                    
                    $uspjesnaPrijava = true;
                    // Provjera da li je admin
                    if($levelKorisnika == 1) {
                        $admin = true;
                    }
                    else {
                        $admin = false;
                    }
                    //postavljanje session varijabli
                    $_SESSION['$username'] = $imeKorisnika;
                    $_SESSION['$level'] = $levelKorisnika;
                } else {
                    $uspjesnaPrijava = false;
                }
            }
        ?>

        <?php
        // Pokaži stranicu ukoliko je korisnik uspješno prijavljen i administrator je
        if (($uspjesnaPrijava == true && $admin == true) || (isset($_SESSION['$username']) && $_SESSION['$level'] == 1)) {
            
            echo '<a class="new" href="unos.php"><div>NOVI ČLANAK</div></a>';
            
            $query = "SELECT * FROM clanak";

            $result = mysqli_query($dbc, $query);
            $i=1;
            while($row = mysqli_fetch_array($result)) {

                echo '<h3>Clanak broj '.$i.'</h3>';

                echo '<form enctype="multipart/form-data" action="administracija.php" method="POST">
                
                <label for="title">Naslov vijesti:</label>
                <input type="text" name="title" id="naslov" value="'.$row['naslov'].'">
                </br></br>
                <label for="about">Kratki sadržaj vijesti:</label>
                <textarea name="about" id="sazetak" cols="30" rows="10">'.$row['sazetak'].'</textarea>
                </br></br>
                <label for="content">Sadržaj vijesti:</label>
                <textarea name="content" id="clanak" cols="30" rows="10">'.$row['sadrzaj'].'</textarea>
                </br></br>
                <label for="slika">Slika:</label>
                <img src="img/' .$row['slika'] . '" width=100px></br>   
                <input type="file"  id="slika" value="img/'.$row['slika'].'" name="slika"/> 
                </br></br>
                <label for="category">Kategorija vijesti:</label>
                <select name="category" id="kategorija" value="'.$row['kategorija'].'">
                <option value="sport">Sport</option>
                <option value="kultura">Kultura</option>
                </select>
                </br></br>
                <label>Spremiti u arhivu:';
                if($row['arhiva'] == 0) {
                echo '<input type="checkbox" name="arhiva" id="arhiva"/>
                Arhiviraj?';
                } else {
                echo '<input type="checkbox" name="arhiva" id="arhiva" checked/> Arhiviraj?';
                }
                echo '</label>
                </br></br>
                <input type="hidden" name="id" value="'.$row['id'].'">
                <button type="submit" name="update" id="update" value="Prihvati">Izmjeni</button>
                <button type="submit" name="delete" value="Izbriši">Izbriši</button>
                </form>
                </br></br></br></br><hr>';
            
                if(isset($_POST["update"])){

                    $id = $_POST["id"];
                    $naslov = $_POST["title"];
                    $sazetak = $_POST["about"];
                    $sadrzaj = $_POST["content"];
                    $kategorija = $_POST["category"];
                    $slika = $_FILES["slika"]["name"];
                    if(isset($_POST["arhiva"])){
                        $arhiva = 1;
                    }else $arhiva = 0;

                    $sql_query = "UPDATE clanak SET naslov = '$naslov', sazetak = '$sazetak', sadrzaj = '$sadrzaj', kategorija = '$kategorija', slika = '$slika', arhiva = '$arhiva'
                    WHERE id = '$id'";

                    $sql_result = mysqli_query($dbc,$sql_query) or
                        die("Error querying database update" .$i); 

                }

                if(isset($_POST["delete"])){

                    $id = $_POST["id"];
                    $naslov = $_POST["title"];
                    $sazetak = $_POST["about"];
                    $sadrzaj = $_POST["content"];
                    $kategorija = $_POST["category"];
                    $slika = $_FILES["slika"]["name"];
                    if(isset($_POST["arhiva"])){
                        $arhiva = 1;
                    }else $arhiva = 0;

                    $sql_query = "DELETE FROM clanak WHERE id ='$id'";

                    $sql_result = mysqli_query($dbc,$sql_query) or
                        die("Error querying database del".$i);
                        
                }
                $i++;
            }
            // Pokaži poruku da je korisnik uspješno prijavljen, ali nije administrator
        } elseif ($uspjesnaPrijava == true && $admin == false) {
            echo '<p>Bok ' . $imeKorisnika . '! Uspješno ste prijavljeni, ali niste administrator.</p>';
        } elseif (isset($_SESSION['$username']) && $_SESSION['$level'] == 0) {
            echo '<p>Bok ' . $_SESSION['$username'] . '! Uspješno ste prijavljeni, ali niste administrator.</p>';
        } elseif ($uspjesnaPrijava == false) {
            ?>
            <!-- Forma za prijavu -->

            <form  method="POST" action="administracija.php" enctype="multipart/form-data">
                <label for="username">Korisničko ime: </label>
                <input type="text" name = "username" id="username">
                </br></br>
                <label for="pass">Lozinka: </label>
                <input type="password" name = "lozinka" id="lozinka">
                </br></br>
                <input type="submit" name="prijava" id="send" value="Prijava">
                </br></br>
            </form>

            <p>Nemate račun? <a style="color:blue" href="registracija.php">Registracija</a></p>

            <script type="text/javascript">
            //javascript validacija forme
            document.getElementById("send").onclick = function(event) {
                var slanjeForme = true;
            
                // Korisničko ime mora biti uneseno
                var poljeUsername = document.getElementById("username");
                var username = document.getElementById("username").value;
                if (username.length == 0) {
                    slanjeForme = false;
                    poljeUsername.style.border="1px dashed red";
                    document.getElementById("porukaUsername").innerHTML="<br>Unesite korisničko ime!<br>";
                } else {
                    poljeUsername.style.border="1px solid green";
                    document.getElementById("porukaUsername").innerHTML="";
                }
                // Provjera podudaranja lozinki
                var poljePass = document.getElementById("pass");
                var pass = document.getElementById("pass").value;
                if (pass.length == 0) {
                    slanjeForme = false;
                    poljePass.style.border="1px dashed red";
                    document.getElementById("porukaPass").innerHTML="<br>Lozinke nisu iste!<br>";
                } else {
                    poljePass.style.border="1px solid green";
                    document.getElementById("porukaPass").innerHTML="";
                }
                if (slanjeForme != true) {
                    event.preventDefault();
                }
            };
            </script>
            <?php
        }
        ?>
        

        
    
        <?php
            mysqli_close($dbc);
        ?>
        
    </main>
    <footer>
        <p>Marin Jurišić, mjurisic@tvz.hr, 2020.</p>
    </footer>
</body>
</html>
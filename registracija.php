<!DOCTYPE html>
<html>
<head>

    <title>Registracija</title>
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
            if(isset($_POST['slanje'])){
                $ime = $_POST['ime'];
                $prezime = $_POST['prezime'];
                $username = $_POST['username'];
                $lozinka = $_POST['pass'];
                $lozinka1= $_POST["pass1"];
                $hashed_password = password_hash($lozinka, CRYPT_BLOWFISH);
                $razina = 0;
                $registriranKorisnik = '';
                $msg = '';
                //Provjera postoji li u bazi već korisnik s tim korisničkim imenom
                $sql = "SELECT username FROM korisnik WHERE username = ?";
                $stmt = mysqli_stmt_init($dbc);
                if (mysqli_stmt_prepare($stmt, $sql)) {
                    mysqli_stmt_bind_param($stmt, 's', $username);
                    mysqli_stmt_execute($stmt);
                    mysqli_stmt_store_result($stmt);
                }
                if(mysqli_stmt_num_rows($stmt) > 0){
                    $msg='Korisničko ime već postoji!';
                }else{
                    // Ako ne postoji korisnik s tim korisničkim imenom - Registracija korisnika
                    $sql = "INSERT INTO korisnik (ime, prezime, username, lozinka, razina)VALUES (?, ?, ?, ?, ?)";
                    $stmt = mysqli_stmt_init($dbc);
                    if (mysqli_stmt_prepare($stmt, $sql)) {
                        mysqli_stmt_bind_param($stmt, 'ssssd', $ime, $prezime, $username, $hashed_password, $razina);
                        mysqli_stmt_execute($stmt);
                        $registriranKorisnik = true;
                    }
                }   



                mysqli_close($dbc);
            }else{
                $ime = "";
                $prezime = "";
                $username = "";
                $lozinka = "";
                $lozinka1= "";
                $hashed_password = password_hash($lozinka, CRYPT_BLOWFISH);
                $razina = 0;
                $registriranKorisnik = '';
                $msg = '';
            }
            
        ?>

        <?php
            //Registracija je prošla uspješno
            if($registriranKorisnik == true) {
            echo '<p>Korisnik je uspješno registriran!</p>';
            } else {
            //registracija nije protekla uspješno ili je korisnik prvi put došao na stranicu
            ?>
            <section role="main">
            <form enctype="multipart/form-data" action="registracija.php" method="POST">
            <span id="porukaIme" class="bojaPoruke"></span>
            <label for="title">Ime: </label></br>
            <input type="text" name="ime" id="ime" class="form-fieldtextual">
            </br></br>
            <span id="porukaPrezime" class="bojaPoruke"></span>
            <label for="about">Prezime: </label>  </br>       
            <input type="text" name="prezime" id="prezime" class="formfield-textual">
            </br></br>
            <span id="porukaUsername" class="bojaPoruke"></span>
            <label for="content">Korisničko ime:</label></br>
            <!-- Ispis poruke nakon provjere korisničkog imena u bazi -->
            <?php echo '<br><span class="bojaPoruke">'.$msg.'</span>'; ?>
            <input type="text" name="username" id="username" class="formfield-textual">
            <span id="porukaPass" class="bojaPoruke"></span>
            </br></br>
            <label for="pphoto">Lozinka: </label></br>
            <input type="password" name="pass" id="pass" class="formfield-textual">
            <span id="porukaPassRep" class="bojaPoruke"></span>
            </br></br>
            <label for="pphoto">Ponovite lozinku: </label></br> 
            <input type="password" name="pass1" id="pass1">
            </br></br>
            <button type="submit" style="border:1px solid black;border-radius:10%;" value="registracija" id="slanje" name="slanje">Registracija</button>
            
            </form>
            </section>
            <script type="text/javascript">
            document.getElementById("slanje").onclick = function(event) {
            var slanjeForme = true;
            // Ime korisnika mora biti uneseno
            var poljeIme = document.getElementById("ime");
            var ime = document.getElementById("ime").value;
            if (ime.length == 0) {
            slanjeForme = false;
            poljeIme.style.border="1px dashed red";
            document.getElementById("porukaIme").innerHTML="<br>Unesite ime!<br>";
            } else {
            poljeIme.style.border="1px solid green";
            document.getElementById("porukaIme").innerHTML="";
            }
            // Prezime korisnika mora biti uneseno
            var poljePrezime = document.getElementById("prezime");
            var prezime = document.getElementById("prezime").value;
            if (prezime.length == 0) {
            slanjeForme = false;13
            poljePrezime.style.border="1px dashed red";
            document.getElementById("porukaPrezime").innerHTML="<br>Unesite Prezime!<br>";
            } else {
            poljePrezime.style.border="1px solid green";
            document.getElementById("porukaPrezime").innerHTML="";
            }
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
            var poljePassRep = document.getElementById("pass1");
            var pass1 = document.getElementById("pass1").value;
            if (pass.length == 0 || pass1.length == 0 || pass != pass1) {
            slanjeForme = false;
            poljePass.style.border="1px dashed red";
            poljePassRep.style.border="1px dashed red";
            document.getElementById("porukaPass").innerHTML="<br>Lozinke nisu iste!<br>";
            document.getElementById("porukaPassRep").innerHTML="<br>Lozinke nisu iste!<br>";
            } else {
            poljePass.style.border="1px solid green";
            poljePassRep.style.border="1px solid green";
            document.getElementById("porukaPass").innerHTML="";
            document.getElementById("porukaPassRep").innerHTML="";
            }
            if (slanjeForme != true) {
            event.preventDefault();
            }
            };
            </script>
            <?php
            }
            ?>

    </main>
    <footer>
        <p>Marin Jurišić, mjurisic@tvz.hr, 2020.</p>
    </footer>
</body>
</html>
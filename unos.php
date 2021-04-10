<!DOCTYPE html>
<html>
<head>

    <title>Novi članak</title>
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
        ?>

        <form name="clanak" method="POST" action="skripta.php" enctype="multipart/form-data">
            <label for="naslov">Unesite naslov članka:  </label>
            <textarea rows="4" cols="26" id="naslov" name="naslov"></textarea>
            </br><span id="naslov-msg"></span></br>
            <label for="sazetak">Unesite sažetak članka: </label>
            <textarea rows="4" cols="26" id="sazetak" name="sazetak"></textarea>
            </br><span id="sazetak-msg"></span></br>
            <label for="clanak">Unesite članak: </label>
            <textarea class="artikl" id="clanak" name="clanak"></textarea>
            </br><span id="clanak-msg"></span></br>
            <label for="kategorija">Odaberite kategoriju: </label>
            <select name="kategorija" id="kategorija">
                <option value="sport">Sport</option>
                <option value="kultura">Kultura</option>
            </select>
            </br><span id="kat-msg"></span></br>
            <label for="slika">Odaberite sliku: </label>
            <input type="file" name="slika" id="slika" accept="image/*">
            </br><span id="slika-msg"></span></br>
            <label for="arhiva">Arhivirati članak?:</label>
            <input type="checkbox" name="arhiva" id="arhivas">
            </br><span id="arhiva-msg"></span></br>
            <input type="submit" name="send" id="send" value="Objavi">
            </br></br>
        </form>

        <script type="text/javascript">
            // Provjera forme prije slanja
            document.getElementById("send").onclick = function(event) {
                var slanjeForme = true;

                // Naslov vjesti (5-30 znakova)
                var poljeTitle = document.getElementById("naslov");
                var title = document.getElementById("naslov").value;
                if (title.length < 5 || title.length > 30) {
                    slanjeForme = false;
                    poljeTitle.style.border="1px dashed red";
                    document.getElementById("naslov-msg").innerHTML="Naslov vjesti mora imati između 5 i 30 znakova!<br>";
                } else {
                    poljeTitle.style.border="1px solid green";
                    document.getElementById("naslov-msg").innerHTML="";
                }

                // Kratki sadržaj (10-100 znakova)
                var poljeAbout = document.getElementById("sazetak");
                var about = document.getElementById("sazetak").value;
                if (about.length < 10 || about.length > 100) {
                    slanjeForme = false;
                    poljeAbout.style.border="1px dashed red";
                    document.getElementById("sazetak-msg").innerHTML="Kratki sadržaj mora imati između 10 i 100 znakova!<br>";
                } else {
                    poljeAbout.style.border="1px solid green";
                    document.getElementById("sazetak-msg").innerHTML="";
                }

                // Sadržaj mora biti unesen
                var poljeContent = document.getElementById("clanak");
                var content = document.getElementById("clanak").value;
                if (content.length == 0) {
                    slanjeForme = false;
                    poljeContent.style.border="1px dashed red";
                    document.getElementById("clanak-msg").innerHTML="Sadržaj mora biti unesen!<br>";
                } else {
                    poljeContent.style.border="1px solid green";10
                    document.getElementById("clanak-msg").innerHTML="";
                }

                // Slika mora biti unesena
                var poljeSlika = document.getElementById("slika");
                var pphoto = document.getElementById("slika").value;
                if (pphoto.length == 0) {
                    slanjeForme = false;
                    poljeSlika.style.border="1px dashed red";
                    document.getElementById("slika-msg").innerHTML="Slika mora biti unesena!<br>";
                } else {
                    poljeSlika.style.border="1px solid green";
                    document.getElementById("slika-msg").innerHTML="";
                }

                // Kategorija mora biti odabrana
                var poljeCategory = document.getElementById("kategorija");
                if(document.getElementById("kategorija").selectedIndex == 0) {
                    slanjeForme = false;
                    poljeCategory.style.border="1px dashed red";
                    document.getElementById("kat-msg").innerHTML="Kategorija mora biti odabrana!<br>";
                } else {
                    poljeCategory.style.border="1px solid green";
                    document.getElementById("kat-msg").innerHTML="";
                }
                if (slanjeForme != true) {
                    event.preventDefault();
                }
            };
        </script>

    </main>
    <footer>
        <p>Marin Jurišić, mjurisic@tvz.hr, 2020.</p>
    </footer>
</body>
</html>
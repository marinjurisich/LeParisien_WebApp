/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.4.11-MariaDB : Database - vijesti
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vijesti` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_520_ci */;

USE `vijesti`;

/*Table structure for table `clanak` */

DROP TABLE IF EXISTS `clanak`;

CREATE TABLE `clanak` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `naslov` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `sazetak` text COLLATE utf8_unicode_520_ci NOT NULL,
  `sadrzaj` mediumtext CHARACTER SET cp1250 COLLATE cp1250_croatian_ci NOT NULL,
  `kategorija` varchar(55) COLLATE utf8_unicode_520_ci NOT NULL,
  `arhiva` int(11) NOT NULL,
  `datum` varchar(32) COLLATE utf8_unicode_520_ci NOT NULL,
  `slika` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

/*Data for the table `clanak` */

insert  into `clanak`(`id`,`naslov`,`sazetak`,`sadrzaj`,`kategorija`,`arhiva`,`datum`,`slika`) values 
(5,'Kako povećati izdržljivost','Stvar je u varanju vlastitog mozga, placebo može povećati rezultate i do 3 posto','Pico Simón Bolívar jedna je od najviših planina u Kolumbiji. Blizu vrha na 5550 metara visine je upola manje kisika nego što je na razini mora. Zrak tamo otežava hodanje i uzrokuje umor i glavobolju, pa se tijelo pokušava prilagoditi: broj disanja se povećava, srce se brže tuče, a krvne žile se šire kako bi dobile više kisika u tkiva.\r\n\r\nKao što možete očekivati, davanje spremnika kisika penjaču poništit će sve te promjene. No, ono što ne biste očekivali je da da možete postići potpuno isto ako je rezervoar za kisik lažan, odnosno da je prazan. \r\n\r\nFabrizio Benedetti je znanstvenik sa Sveučilišta Torino koji je proveo upravo takav eksperiment - ljudima je davao placebo kisik na planinama u Kolumbiji, Aljasci i u svom laboratoriju u Alpama i primijetio isto - lažni spremnici s kisikom mogu oponašati efekte stvarnih.\r\nEfekt djeluje samo ako ispitaniku prvih par puta da stvarni spremnik s kisikom, a potom ga zamjeni lažnim, jer na taj način njihova tijela očekuju primanje kisika. Tako, iako je spremnik prazan, on ipak može poboljšati fizičke performanse na vježbama hodanja na velikoj visini. \r\n\r\nNo, pitanje je kako?\r\n\r\n- To je pitanje za milijun dolara. Nema kisika u krvi, nema kisika u tijelu, no dobili smo isti efekt kao da smo im dali kisik. Iskren odgovor je da ne znamo - rekao je za BBC.\r\nU novije vrijeme, znanstvenici poput Benedettija postali su zainteresirani za način na koji bi placebo mogao funkcionirati u svijetu sporta. Bilo koji profesionalni sportaš reći će vam da njihova uvjerenja o pobjedi igraju ogromnu ulogu u uspjehu, a istraživanje sugerira da modificiranjem njihovih očekivanja, placebo efekt može imati snažan utjecaj na brzinu ili koliko daleko mogu ići.\r\n\r\nU jednoj su studiji dobro pripremljeni biciklisti čuli da će dobiti ništa, malu ili visoku dozu kofeina prije ispitivanja. U stvarnosti su svi dobili placebo. Rezultat je otkrio kako su oni koji su mislili da su dobili malu dozu kofeina nakon nje imali 1,5 posto bolje rezultate, a oni s navodno visokom dozom čak 3 posto - sve u utrci na 10 kilometara.','sport',0,'09 Jun 2020','dreamstime-m-159827601.jpg'),
(12,'Osamdesetogodišnjak igra tenis','Tenis je počeo igrati u Varaždinu odmah nakon završetka Drugog svjetskog rata.','Kada s reketom u ruci stanem na teniski teren osjećam se sto godina mlađe. To je užitak, a reket i lopta su bili moj život, priča nasmijani Kamilo Keretić (87) dok četrdesetak godina mlađem Robiju, inače učitelju tenisa, otkriva čari i tajne tenisa. \r\nOvaj Varaždinac s porečkom adresom je jedan od zasigurno najstarijih živućih igrača tenisa u Hrvatskoj. Iako mu noge polako posustaju Kamila je nerijetko vidjeti na ili uz teniske terene u Poreču. Kamilo rijetko javno progovara o tome da je on zapravo živuća legenda hrvatskog tenisa kojeg je zaigrao u Varaždinu još kao 13-godišnjak daleke 1946. godine, odmah nakon Drugog svjetskog rata. Već sa 14 godina bio je pobjednik teniskog turnira gimnazije u Varaždinu.\r\n\r\n- Svoje roditelje sam razočarao totalno. Mama je željela da budem svećenik, tata je htio da budem liječnik a ja sam htio biti golman.\r\nDakle, ničija se želja nije ispunila. Nogomet mi je bila slabost, ali se kasnije iskristaliziralo da sam uspjehe polučio u tenisu. Ne mogu reći da sam bio talentiran za tenis koliko sam bio uporan. U ono vrijeme se u sportu moglo nešto napraviti s upornošću a danas nema šanse napraviti ništa bez talenta i upornosti zajedno – priča Keretić prisjećajući kako se sa „žicom“ golmana u sebi, jer je branio i za NK Varteks, po teniskim terenima za lopticom bacao kao golman.\r\n- Tenis je poseban sport kojeg oni koji nisu držali reket u rukama ne razumiju. Tenis je sport koji možda kvari karakter ljudi. U tenisu se tenisač sam bori protiv suigrača. Uz tenis je poželjno imati još jedan momčadski sport zbog osjećaja da s nekim nešto dijelite. Ovdje ste sami za sebe. Tenisač kakovog ga po karakteru vidite na terenu on je takav i u životu izvan terena. Vi ne možete biti sportaš ako niste zaljubljeni u sport i ako niste malo „živac“ jer običan čovjek to teško može igrati.  U bivšoj državi sam bio dvije godine bez poraza. Jedino što mi se moglo desiti je da izgubim slijedeći meč. Nekad sam prije meča znao i povraćati od prevelike nervoze. Svojim igračima sam uvijek znao reći, ako misliš da možeš izgubiti ne idi uopće na teren jer je to već pola poraza. Moraš vjerovati u sebe i pobjedu jer druga mogućnost ne postoji. Samo s tim motom ako idete s mišlju na pobjedu može se postići uspjeh – pojašnjava Keretić.','sport',0,'09 Jun 2020','img-7841.jpg'),
(13,'Smjena na klupi Arsenala','Danas kada je pred Arsenalom promjena trenera, shvaćamo koliko je teško zamijeniti Arsenea Wengera.','Kada netko provede više od 20 godina na trenerskoj klupi, promjeni način na koji se klub vodi i uzdigne ga na svim razinama, jasno je da će biti teško pronaći zamjenu. Kako je teško popuniti tu prazninu možda još i bolje znaju oni u crvenom dijelu Manchestera. Wenger i Ferguson su klub napustili u drugačijim uvjetima, no oba kluba su se njihovim odlaskom našla u velikom problemu u pronalasku nasljednika. Emery je bivši. Dijelom svojom krivicom, ali dijelom krivice uprave. Pasivnost i jako sporo detektiranje i rješavanje problema u klubu datiraju još od onog odugovlačenja sa smjenom Wengera koje se trebalo desiti sezonu ili dvije ranije. Unai Emery svoje je ime na listu elitnih trenera stavio osvajanjem tri uzastopne Europske lige sa Sevillom. Idući korak u karijeri bio je preuzimanje PSG-a. Njegov boravak u Parizu obilježila je ona noć na Nou Campu kada je Barcelona nadoknadila 4-0 iz prve utakmice i izbacile Parižane iz Lige Prvaka. Osim toga, izgubio je titulu prvaka francuske od Monaca. Kada s onakvom ekipom izgubiš prvenstvo koje je praktički upisano kao osvojeno prije početka sezone, onda je otkaz stvar s kojom se morate pomiriti. Emery zapravo nikada nije ni bio za sredinu poput Pariza. Igrači ga jednostavno nisu ozbiljno shvaćali, svlačionicu Seville bilo je teško zamijeniti onom PSG-a, a jezična barijera bila je još jedan od očitih problema.\r\n\r\nDanas kada pogledamo malo manje od godine i pol na klupi Arsenala, Emeryjev najveći uspjeh je onaj niz od 20 utakmica bez poraza i izgubljeno finale Europske lige. Za prvu sezone se nije činilo loše, bilo je elemenata na kojima se može pozitivno graditi i uz dobro odrađen prijelazni rok ozbiljno napasti plasman za Ligu Prvaka. Usprkos tome što je Arsenalova obrana bila „slon u sobi“, odlučili su ponovo investirati u napad i učinili Nicolasa Pepea najskupljim pojačanjem u povijesti. Tako je Arsenal postao ekipa s najvećim disbalansom između napada i obrane, priča o kriminalno lošoj obrani koja se provlačila cijelom prošlom sezonom nije riješena.\r\nJoš jedna bitna stvar koja nije riješena prošlog ljeta bilo je pitanje Mesuta Özila. Situacija oko bivšeg njemačkog reprezentativca je postala prava enigma, nitko zapravo ne zna što se događa s nekad prvom zvijezdom ekipe. Najplaćeniji igrač Arsenala prošle sezone je po učinku imao najlošiju sezonu u svojoj karijeri gdje je bio uključen u samo sedam golova svoje momčadi. Özil u nekim utakmicama uopće nije niti bio na klupi, da bi onda sljedeću utakmicu započeo kao kapetan, pa onda opet dugo grijao klupu. Iako su za rješavanje Özilove situacije imali dva prijelazna roka, klub je ostao pasivan i pustio da njegova negativna energija bude samo teret ove ekipe.\r\n\r\nOno što se Emeryju najviše može zamjeriti je činjenica da ekipi nije dao identitet, jasan sistem igre po čemu se sve najbolje ekipe prepoznaju. Promjene formacija bile su prečeste, Emery nije uspio pronaći barem okvirno najboljih 11 iako je za to imao vremena. Ako uzmemo razmak od sedam utakmica ove sezone, od utakmice u Europskoj ligi s Vitoriom do Southamptona na Emiratesu, Emery je koristio 7 formacija i napravio čak 50 promjena. Za to vrijeme Arsenal je pobijedio samo jednom, odigrao neriješeno pet puta i niz završio s negativnom gol razlikom. Za 18 provedenih mjeseci u klubu Emery nije uspio taktički usmjeriti Arsenal, Španjolac se jednostavno izgubio u konstantom eksperimentiranju. Previše je taktiku svoje ekipe prilagođavao protivničkoj, pa smo znali viđati njegove česte dvostruke promjene već na poluvremenu. No, klub poput Arsenala koji se smatra elitom ne bi trebao svoju igru prilagođavati drugome, nego bi „drugi trebali plesati kako oni sviraju“. Klub koji je nekada imao jasan sistem igre i famozni „The Arsenal way“ (Arsenalov način) izgubio je svoj identitet. Za usporedbu, Klopp i Guardiola su za isto vrijeme kao Emery imali ideju, razvijene mehanizme igre, sistem koji su kasnije nadogradili pojačanjima i na kraju napravili dvije dinastije.\r\nArteta danas dolazi u klub u sličnim uvjetima, bez prijašnjeg trenerskog iskustva, s najboljom preporukom da je bio pomoćnik Pepa Guardiole. Artetini i Guardiolini putevi su se ukrstili davno prije Manchester Cityja. Barcelona je dovela Artetu kao mladog talentiranog veznjaka, konkurenciju mu je pravio njegov dojučerašnji suradnik, nitko drugi nego Pep Guardiola. Pep je bio nezamjenjiv, stoga je Arteta morao napustiti Barcelonu kako bi na drugom mjestu dobio minutažu. Njegova igračka karijera nikada nije bila spektakularna, zapravo bila je solidna. Nije bio igrač koji je skretao pozornost na sebe atraktivnim potezima ili golovima, zbog Artete prosječni navijač nije kupovao kartu za utakmicu. Arteta je bio taj koji je držao ključeve igre u svojim rukama, svaki njegov potez bio je logičan i unaprijed promišljen, kao takav bio je produžena ruka trenera na terenu. Arsene Wenger visoko ga je cijenio, smatrao je da ima karakteristike vođe, bio je njegov kapetan i osoba koja razumije „The Arsenal Way“. Kada se Španjolac umirovio Wenger mu je ponudio da vodi Arsenalovu akademiju, no Arteta se odlučio pridružiti svome starom poznaniku i postati pomoćni trener Man. Cityja. Jedan od razloga zbog kojeg ga je uzeo kao svog suradnika je činjenica da je Arteta već dugo na „Otoku“, za razliku od Pepa, poznavao je dobro tamošnje prilike i nema problema sa jezikom. Osim toga, on i Pep su istomišljenici, štovatelji tekovina Rinusa Michelsa i Johana Cruyffa koje su temelj modernog nogometa. Arteta je bio spona između Pepa i igrača, igrači poput Sterlinga i Sanea više puta su istaknuli kako im je pomogao u prilagodbi na Pepov zahtjevan sistem. Baš je on bio ključan u Sterlingovoj evoluciji, kroz individualni rad Arteta ga je naučio kako pametnije koristiti prostor da bi ulazio u više prilika za gol nego ranije.\r\n\r\nArteta je potreban Arsenalu. Ne zbog toga jer poznaje klub kao što je posao u Manchesteru dobio Solskjaer, nego čisto zbog svog nogometnog znanja i trenerskih kvaliteta koje su mnogi nahvalili. Kao bivši kapetan sigurno će imati više autoriteta nego svoj prethodnik. Arteta zna što znači igrati za Arsenal, njegovim riječima to je jedna od prvih stvari koje će prenijeti na igrače. Igrači su se žalili na Emeryjev loš engleski, kako ponekad ne razumiju poruke trenera, Arteta neće imati problema s tim. Bitna stvar za svlačionicu je ta da će Arteta morati pronaći kapetana, iako smo to ukazivali već na početku sezone, Granit Xhaka dokazuje da to jednostavno nije. Uprava će morati biti strpljiva, moraju shvatiti da se pobjedničke ekipe ne rađaju preko noći i da će za implementaciju onoga što Arteta želi trebati vrijeme. Vrijeme i novac. Očigledno je da ovoj ekipi trebaju novi igrači, ali isto tako trebaju se pokazati izlazna vrata onima koji postaju rak rana ekipe. Arteta je rizik, onaj rizik kojeg se Arsenal ne boji uzeti, baš zbog toga jer im donio toliko toga dobrog kroz povijest.','sport',0,'09 Jun 2020','images-2019-50-pxl-110917-841.jpg'),
(14,'Ovaj vikend: nogomet i košarka','Mnoga natjecanja otkazana su do travnja, ali još se u nekim zemljama odvijaju sportska natjecanja','Nema Premiershipa, Bundeslige, Ligue 1, La lige, Serie A, nema ni HNL-a. Nogomet u Europi je bar do početka travnja \"stao\". Ni košarka se ne igra kako u većem dijelu Europe, tako i u najjačoj svjetskoj ligi, NBA-u. Tenis je odgođen na šest tjedana, rukomet, vaterpolo, formula, sve staje barem do početka travnja.\r\n\r\nNo, ovog vikenda za one koji bez sporta ne mogu, a htjeli bi ga gledati na TV ekranima, morat će se zadovoljiti s malo turske košarke, australskog, ukrajinskog i urugvajskog nogometa te relijem. Tako iz sigurnosti vlastite fotelje morate prihvatiti ono što se nudi ili pak potegnuti za možda nekim dobrim filmom sportske tematike.','sport',0,'09 Jun 2020','untitled-design-13_JoGErzh.jpg'),
(17,'Monetarna potpora za umjetnike','Kriterij jednak kao i za sve ostale, trebalo je dokazati smanjeni opseg aktivnosti zbog Covida-19','Ministrica kulture Nina Obuljen Koržinek istaknula je u četvrtak da je za 751 umjetnika  osigurano nešto malo više od 6,7 milijuna kuna potpora, te će im se jednokratno isplatiti po 10.000 kuna za višu, odnosno po 5000 kuna za nižu kategoriju, ovisno o ostvarenim prihodima u prošloj godini.   \r\n\r\n\"Ovaj natječaj kojeg smo danas objavili rezultate odnosi se na one umjetnike koje smo nazivali trećom skupinom umjetnika, znači one koji nisu bili do sada obuhvaćeni mjerama Ministarstva kulture niti Hrvatskog zavoda za zapošljavanje\", istaknula je Obuljen Koržinek.\r\n\r\nNaime, ukupno se prijavila 31 umjetnička strukovna udruga na temelju čijih potvrda se ostvaruju porezne olakšice i ovim javnim pozivom odobrena su im namjenska sredstva u ukupnom iznosu od 6.715.000 kuna za isplatu jednokratne potpore za 751 njihovog člana.\r\n\r\nObuljen Koržinek kaže kako su više puta javno komunicirali da su imali poteškoće jer ne postoji nikakav registar niti popis. \r\n\r\n\"Željela bih se u prvom redu zahvaliti strukovnim udrugama koje su zajedno s nama razradile kriterije, na temelju tih kriterija pozvali su svoje članove, napravili su izbor onih koji ispunjavaju kriterije i sad smo odobrili te potpore. Znači, 31 udruga, 751 umjetnik i nešto malo više od šest milijuna i sedamsto potpora\", istaknula jeministrica kulture.\r\nRekla je da su odlučili, s obzirom da je prošlo neko vrijeme, ne ići s mjesečnim nego s jednokratnim isplatama.\r\n\r\nDodaje da će se isplatiti 10.000 kuna za višu, odnosno 5000 kuna za nižu kategoriju, ovisno o prihodima koji su ostvareni u prošloj godini. \r\n\r\nMinistrica ističe da je generalno kriterij bio jednak kao i za sve ostale, trebalo je dokazati prestanak aktivnosti ili smanjeni opseg aktivnosti zbog Covida-19.\r\n\r\n\"Drago mi je da smo uspjeli ovim tipom potpore ipak obuhvatiti i \"freelancere\", odnosno honorarce, a naravno, kao što smo već komunicirali, mi smo već u drugoj fazi naših mjera. Dakle, raspisali smo i poduzetništvo i kulturu online i počeli smo sa reprogramiranjem programskih sredstava Ministarstva kulture, tako da se zapravo polako vraća i kulturna produkcija u život\", poručila je ministrica kulture.\r\n\r\nNa pitanje novinara o kojim je udrugama riječ, rekla je da su to strukovne udruge iz pet naših ključnih područja - znači filmsko područje, izvedbeno područje, znači kazalište, glazba, književno područje i prevodilaštvo i vizualne umjetnosti odnosno primijenjene umjetnosti.','kultura',0,'09 Jun 2020','pxl_070618_20881583.jpg'),
(18,'Osmi diskont kulture','Osmi ljetni diskont kulture održava se od  4. lipnja do 24. srpnja u Centru za kulturu Trešnjevka','Centar najavljuje kako posjetitelje ove godine očekuje bogat program, među kojima su koncerti, stand up show, eko plac,  društvene igre, čitanje priča, književne večeri i kvizovi. \r\n\r\nPosjetitelji mogu slušati zanimljive koncerte, družiti se na radionicama, zabaviti se ali i nešto naučiti, napominje CeKaTe i dodaje kako će se programi održavati u Atriju CeKaTe-a, a u slučaju kiše u dvorani. CeKaTe poziva posjetitelje da se pridruže i dobrotvornoj akciji pod geslom \"Dobro je činiti dobro\", odnosno da umjesto kupljene ulaznice doniraju hranu i higijenske potrepštine za ljude u potrebi. \r\nZa sve događaje, osim za stand up predstave, ne mora se kupiti kartu, nego se može donijeti sve što nedostaje socijalnoj samoposluzi u Zagrebu – brašno, šećer, riža, ulje, konzerve i higijenske potrepštine. ','kultura',0,'09 Jun 2020','pxl-171218-23034049.jpg'),
(20,'Festivali će se održati','Ministrica kulture održala je u utorak video-sastanak s čelnicima festivala izvedbenih umjetnosti','U ovoj fazi ne razmišlja se o otkazivanju festivala, nego o prilagodbi programa s posebnim naglaskom na angažman hrvatskih umjetnika koji su zbog mjera ograničenja dulje vremena bili bez angažmana, priopćilo je Ministarstvo kulture,\r\n\r\nPoticat će se, navode, produkcija ili gostovanja manjih formata, vodeći računa o općim epidemiološkim smjernicama, a naglasak će biti na programima na otvorenom te prilagodbi gledališta, uz potrebu izbjegavanja rizika od zaraze.\r\n\r\nTakođer, dogovoreno je da će vodstva festivala Ministarstvu do kraja svibnja dostaviti prijedlog prilagođenih programa uz odgovarajuće troškovnike.\r\n\r\nSjednica Vijeća nacionalnih festivala organizirat će se u lipnju, kada će u skladu s epidemiološkom situacijom biti prihvaćeni izmijenjeni programski i financijski planovi.\r\n\r\nSastanku su bili prisutni ravnatelj Splitskog ljeta Srećko Šestan, intendantica Dubrovačkih ljetnih igara Dora Ruždjak Podolski, ravnatelj festivala Osorske glazbene večeri Branko Mihanović, ravnatelj festivala Varaždinske barokne večeri Davor Bobić, ravnatelj Međunarodnog dječjeg festivala Šibenik Jakov Bilić i umjetnički ravnatelj Međunarodne smotre folklora Zagreb Tvrtko Zebec.','kultura',0,'09 Jun 2020','untitled-design-3_4eoVSey.jpg'),
(22,'Drive-in kino u Zagrebu','Vikend drive-in filmsko-glazbeni spektakl označava početak nove platforme za nezavisnu kulturu','Program kulturnih sadržaja na otvorenom platforme Drive in kultura otvorit će filmsko-glazbeni drive-in spektakl koji od 15. do 17. svibnja na parkiralištu Hala V iza zagrebačkog Tehničkog muzeja donosi vikend domaćih filmskih hit naslova uz popratni glazbeni program.\r\n\r\nTijekom tri večeri, od petka do nedjelje, posjetitelji će imati priliku doživjeti jedinstveni spoj umjetnosti i zabave iz udobnosti vlastitog automobila po principu američkog popularnog načina okupljanja mladih, drive-in kina.\r\n\r\nPopratni glazbeni program, s kojim će započinjati svaka filmska večer, također će kreirati popularne domaće snage poput omiljenog veterana zagrebačke elektronske scene, DJ Felvera.\r\nVikend drive-in filmsko-glazbeni spektakl označit će početak razvoja nove platforme za nezavisnu kulturu koja je zbog pandemije koronavirusa trenutno potpuno blokirana. Događanje je ujedno humanitarnog karaktera te predstavlja poziv publici na akciju i doniranje sredstava za studente koji su ostali bez izvora prihoda u ovim zahtjevnim vremenima.\r\n\r\n- Poznata je činjenica kako su mnogobrojni projekti otkazani, rad ograničen, a o njihovoj se egzistenciji u ovom kriznom vremenu rijetko progovaralo. U suradnji sa zakladom Solidarna prikupljat će se sredstva za studente, te će se zatim u dogovoru sa Sveučilištem u Zagrebu, usmjeriti prema najugroženijima - ističu organizatori.\r\nZa prvo događanje Drive in kulture ulaz i broj automobila je ograničen i posebno reguliran zbog sigurnosnih mjera. Svoje je mjesto potrebno unaprijed rezervirati putem web stranica projekta.\r\n','kultura',0,'10 Jun 2020','2020-04-18t101606z-364540422-rc2y6g9xpz4z-rtrmadp-3-health-coronavirus-germany.jpg'),
(23,'Reprezentativac s dijabetesom','Dejan osam godina ima dijabetes, ali to ga nije spriječilo da igra nogomet i bude dio reprezentacije','Prvi simptomi dijabetesa pojavili su se prije osam godina. Konstantna žeđ, velik umor, učestalo mokrenje i zamagljenje vida govorili su da nešto nije uredu, a to je potvrdio gubitak od sedam kila u samo tjedan dana, rekao je Dejan Kolar (28), nogometaš austrijskoga kluba SV Halbenraina i futsal reprezentacije osoba s dijabetesom.\r\n\r\n- Prije nego što sam stigao kući, doktorica me nazvala i uputila hitno u KB Merkur. Rekli su mi da sam dijabetičar, tip 1. Od prvog dana sam ovisan o inzulinskoj terapiji. U početku sam bio u velikom šoku. Proveo sam tjedan dana u bolnici i upoznao se s načinom života dijabetičara- govori student iz Pregrade. Odmalena je zaljubljenik u nogomet i tjelesnu aktivnost, pa prekid takvog načina života za njega nije bila solucija.\r\n- Nekad su preporuke doktora vezane uz dijabetes i bile takve da pretjerana tjelesna aktivnost nije dobra, ali se to u potpunosti promijenilo i tjelesnu aktivnost stavljaju na prvo mjesto u borbi protiv dijabetesa - rekao je i dodao da nije posebno mijenjao niti prehranu nego je morao naučiti koliko pojedina hrana utječe na razinu šećera u krvi kako bi nakon svakog obroka znao dozirati inzulin.\r\n- Uvijek pazim da ne kombiniram međusobno previše ugljikohidrata i da se ne ‘pretrpavam’ slatkim. Posebno vodim računa da su mi večere najmanji obroci jer inače šećer zna otići ‘u nebesa’ tijekom noći - priča sportaš.\r\n\r\nKad je imao 11 godina, počeo je igrati za NK Pregradu, a četiri godine kasnije otišao je u Inter iz Zaprešića. Kad je upisao gimnaziju, vratio se u NK Pregrada jer mu je bilo teško uskladiti svakodnevne treninge. Već šestu sezonu igra za austrijski SV Halbenrain.\r\n- Mogu reći da sam sretan što me put odveo tamo jer je totalno drukčiji mentalitet i organizacija kluba, ali i općenito nogometa - rekao je.\r\n\r\nKako je taj sport postao njegova najveća strast, upisao je Kineziološki fakultet, smjer nogomet. Danas ga samo obrana diplomskog rada dijeli od diplome. Od kolege na fakultetu čuo je za futsal reprezentaciju osoba s dijabetesom i otišao na selekcijski trening. S njima je 2017. osvojio prvo mjesto u Bukureštu, godinu kasnije drugo mjesto u Bratislavi i ove godine broncu u Kijevu. Kad povezuje dijabetes i sport, na pamet mu pada samo jedna rečenica: “Sport je zakon”.\r\n- Preporučio bih ga i zdravima jer je on najbolji za prevenciju mnogih bolesti, pa i dijabetesa tipa 2. U mojem slučaju dijabetes se pojavio iz neobjašnjivih razloga, jednostavno sam se jedan dan probudio i nije se moglo više natrag. Ali to nije bio dan u kojem sam odustao i od čega nego sam krenuo još \"življe\" naprijed - zaključuje Dejan. (st)','sport',0,'11 Jun 2020','pxl-180919-26056971.jpg');

/*Table structure for table `korisnik` */

DROP TABLE IF EXISTS `korisnik`;

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ime` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `prezime` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `lozinka` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `razina` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

/*Data for the table `korisnik` */

insert  into `korisnik`(`id`,`ime`,`prezime`,`username`,`lozinka`,`razina`) values 
(2,'Marko','Martičević','mark01','$2y$10$LncWwv0IUx6ZndRXzOqsgOI6yyBVJUSPj1zFL1jNEzNgwhQNVKbgm',0),
(3,'ante','peric','amte','$2y$10$KJRUhan6KffHrGlXpIyIzuTj8t7GvqRWS1pCO87qShrnG8r0Zw2Yu',0),
(4,'-','-','admin','$2y$10$Fa0zwQJ/KKzJVbwtV4hjS.7KVwsETXtgKDDZRz7IUi/Usg5JvyF4.',1),
(5,'filip','Brkić','brcko','$2y$10$fEn5ejBBBkQf57qJ9hri7O/cmhKD3Wpk1c1novEaibz029psith2G',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

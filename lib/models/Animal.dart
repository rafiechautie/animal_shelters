import 'package:flutter/material.dart';

class Animal{
  String name;
  String species;
  String age;
  String gender;
  String weight;
  String description;
  String imageAsset;

  Animal({
    required this.name,
    required this.species,
    required this.age,
    required this.gender,
    required this.weight,
    required this.description,
    required this.imageAsset,
  });
}

var animalList = [
  Animal(
      name: "Susan",
      species: "Beruang Cokelat",
      age: "10 tahun",
      gender: "Perempuan",
      weight: "50 kg",
      description: ""
          "Beruang cokelat (Ursus arctos) adalah salah satu jenis beruang. Hidup di wilayah timur Eurasia dan Amerika Utara. Beruang cokelat bisa berbobot 130–700 kg (300–1500 pon). Beruang kodiak termasuk jenis beruang cokelat yang terbesar, yang seukuran dengan beruang kutub yang memiliki anggota terbanyak dalam kerluarga beruang [1][2][3] yang merupakan hewan pemangsa darat terbesar.[4] Ada beberapa subspesies beruang cokelat, antara lain: beruang cokelat suriah, beruang cokelat kodiak, beruang cokelat alaska, beruang cokelat amerika (grizzly) dan beruang cokelat meksiko."
          "",
      imageAsset: "images/bear1.jpg",
  ),
  Animal(
      name: "Budi dan Bude",
      species: "Burung Merpati",
      age: "2 tahun",
      gender: "Laki-laki",
      weight: " 500 gram",
      description: ""
          "Merpati adalah jenis burung yang keberadaannya tidak asing di lingkungan sekitar kita. Dalam istilah sehari-hari, burung merpati seringkali juga disebut burung dara. Penyebutan dara maupun merpati digunakan untuk menyebut nama burung yang sama. Namun berdasarkan orinologi, istilah burung dara cenderung digunakan untuk menyebut spesies yang tubuhnya lebih kecil, sedangkan sebutan merpati untuk spesies yang lebih besar."
          "",
      imageAsset: "images/bird1.jpg",
  ),
  Animal(
      name: "Udin",
      species: "Burung Kenari",
      age: "1 tahun",
      gender: "Laki-laki",
      weight: " 500 gram",
      description: ""
          "Burung kenari (Serinus canaria) pertama ditemukan Oleh Pelaut Prancis Jean de Berthan Cout di Kepulauan Canary pada abad ke-15. Negara Belanda yang kini lebih dikenal sebagai negara pengekspor kenari Indonesia, semula mendatangkan kenari dari Inggris, Jerman dan Belgia kemudian kenari tersebut dikawinkan dengan kenari liar dan menghasilkan beberapa jenis kenari lainnya. Nama burung kenari tidak berhubungan dengan buah kenari, melainkan diambil dari nama pulau habitat aslinya, yaitu Kepulauan Canary. Kepulauan itu sendiri mendapat namanya dari bahasa Latin canarias yang berarti (pulau) anjing, karena banyaknya anjing liar yang ada di sana pada zaman dahulu."
          "",
      imageAsset: "images/bird2.jpg",
  ),
  Animal(
      name: "Olive Helle",
      species: "Parrot",
      age: "1 tahun",
      gender: "Perempuan",
      weight: " 1 kg",
      description: ""
          "Burung parrot / burung paruh bengkok terdiri atas puluhan spesies, dan sebagian besar memiliki tingkat kecerdasan tinggi. Bahkan beberapa spesies burung parrot dapat dilatih untuk menirukan ucapan atau kata-kata manusia secara fasih. Berikut ini 10 jenis burung parrot yang pintar meniru ucapan manusia."
          "",
      imageAsset: "images/bird3.jpg",
  ),
  Animal(
      name: "Ejvind Daly",
      species: "Budgerigar",
      age: "5 bulan",
      gender: "Perempuan",
      weight: " 500 gram",
      description: ""
          "Budgerigar atau burung Budgie atau Parakeet adalah burung parkit yang sangat popular di kalangan pecinta burung, karena memiliki warna-warna yang terang, kicauan yang indah bahkan bisa menirukan suara manusia, dan mudah berinteraksi dengan manusia. Budgie adalah burung yang jinak, mudah dihandle, dan bisa menunjukkan sayangnya. Selain itu burung ini bisa mengingat dan menirukan beberapa jenis kata jika dilatih dengan benar."
          "",
      imageAsset: "images/bird4.jpg",
  ),
  Animal(
      name: "Mattanyahu Yewande",
      species: "Ragdoll",
      age: "5 bulan",
      gender: "Laki-laki",
      weight: " 500 gram",
      description: ""
          "Ragdoll adalah ras yang relatif baru, tidak seperti banyak ras kucing lainnya. Faktanya, menurut sebagian besar orang, jenis kucing ragdoll berumur kurang dari 100 tahun. Banyak Ragdoll memiliki bulu runcing berwarna, seperti kucing Siam. Sehingga, banyak yang percaya bahwa salah satu kucing pertama dalam keturunan Ragdoll bisa jadi adalah kucing Burma atau Siam, atau hanya memiliki ciri yang serupa."
          "",
      imageAsset: "images/cat1.jpg",
  ),
  Animal(
      name: "Vipin Harshada",
      species: "Kucin Anggora",
      age: "3 bulan",
      gender: "Laki-laki",
      weight: " 300 gram",
      description: ""
          "Anggora biasanya berukuran kecil hingga sedang dengan berat 5 hingga 9 pound. Dibalik kecantikanya kucing ini juga cerdas yang membuatnya selalu menghibur Anda. Mereka sangat menawan dengan bulunya yang memiliki lapisan tunggal dan bertekstur halus. Bulunya juga mudah dirapikan jika rutin disisir secara mingguan meski kadang mudah rontok. Menghadapi sikapnya yang aktif, Anda perlu sedikit kesabaran dan mau melayani kucing satu ini. Namun sifatnya yang ramah membuatnya mudah akrab dengan anak-anak, bahkan hewan peliharaan lainnya seperti anjing."
          "",
      imageAsset: "images/cat2.jpg",
  ),
  Animal(
      name: "Malone Aretha",
      species: "Kucing Kampung",
      age: "4 bulan",
      gender: "Laki-laki",
      weight: " 500 gram",
      description: ""
          "kucing kampung memiliki bentuk kepala yang cenderung kecil dan sedikit lebih lonjong dibanding jenis kucing lainnya. Kepala kucing yang kecil ini memungkinkan mereka untuk masuk ke lubang-lubang kecil yang tampak sulit dilalui. Kepala kecil kucing kampung ini juga dihiasi dengan telinga yang berukuran sedang."
          "",
      imageAsset: "images/cat3.jpg",
  ),
  Animal(
      name: "Pedr Iovianus",
      species: "Kucing Persia",
      age: "1 tahun",
      gender: "Laki-laki",
      weight: " 2 kg",
      description: ""
          "Kucing persia adalah ras kucing domestik berbulu panjang dengan karakter wajah bulat dan moncong pendek. Namanya mengacu pada Persia, nama lama Iran, di mana kucing serupa ditemukan. Sejak akhir abad 19, kucing jenis ini dikembangkan di Britania Raya dan Amerika Serikat usai Perang Dunia II.[1] Di Britania Raya, ras ini disebut kucing bulu panjang Persia, dibagi dalam dua jenis, yaitu Chinchilla dengan warna perak cerah dan yang agak gelap. Seperti halnya dengan ras Siam, telah ada upaya oleh beberapa peternak untuk melestarikan ras kucing yang lebih tua, ras tradisional, yang memiliki moncong lebih jelas, yang lebih akrab dengan masyarakat umumnya."
          "",
      imageAsset: "images/cat4.jpg",
  ),
  Animal(
      name: "Modigliana",
      species: "Ayam Kampung",
      age: "2 tahun",
      gender: "Laki-laki",
      weight: " 1 kg",
      description: ""
          "Ayam kampung adalah sebutan di Indonesia bagi ayam peliharaan yang tidak berasal-usul dari galur atau ras yang dihasilkan untuk kepentingan komersial. Dahulu, ayam kampung tidak memiliki istilah ayam kampung petelur ataupun pedaging. Hal ini disebabkan ayam kampung bertelur sebagaimana halnya bangsa unggas dan mempunyai daging selayaknya hewan pada umumnya. Namun, sekarang sudah banyak yang membudidayakan ayam kampung untuk tujuan komersial. Nama ilmiah untuk ayam kampung adalah Gallus domesticus.[2] Aktivitas peternakan ayam kampung telah ada sejak zaman dahulu. Seiring dengan berkembangnya zaman, kini peternakan ayam kampung telah banyak mengalami perubahan. Sudah banyak ayam kampung yang dikembangkan agar memiliki produktivitas yang lebih baik."
          "",
      imageAsset: "images/chicken1.jpg",
  ),
  Animal(
      name: "Marzipan",
      species: "Pomeranian",
      age: "2 tahun",
      gender: "Laki-laki",
      weight: " 2 kg",
      description: ""
          "Anjing Pomeranian atau Pom dikenal sebagai salah satu ras anjing kecil. Lantaran bertubuh kecil, Pomerania kerap dikira sebagai anjing mainan atau bohongan. Ras anjing ini hanya memiliki tinggi sekitar 20-28 sentimeter dan berat badan hanya satu hingga tiga kilogram sehingga cocok untuk dipelihara di rumah berukuran kecil dan bisa dibawa ke mana pun saat bepergian. Meski demikian, Pomeranian sangat bersemangat, ramah, lucu, menyenangkan, bahkan membutuhkan olahraga dan latihan rutin. Anjing Pomeranian juga termasuk ras anjing cerdas. Penampilan anjing ini mudah dikenali dari bulunya yang halus dan tebal, terlebih di bagian leher, wajahnya yang mirip rubah, bentuk telinga yang tajam dan waspada, serta moncong yang lucu."
          "",
      imageAsset: "images/dog1.jpg",
  ),
  Animal(
      name: "Jareth Colon",
      species: "Beagle",
      age: "5 tahun",
      gender: "Laki-laki",
      weight: " 5 kg",
      description: ""
          "Beagle, siberat atau biasa dikenal dengan Anjing Pemburu adalah ras anjing terkecil dari famili anjing pemburu yang aslinya berasal dari Inggris.[1] Beagle diklasifikasikan menjadi empat jenis, yaitu: Beagle berukuran sedang, Beagle kerdil atau kecil, Beagle rubah, dan Beagle terrier (berbulu kasar).[2] Dalam sejarahnya, anjing ini sering dimanfaatkan dalam berburu kelinci karena memiliki penciuman yang tajam walaupun pergerakkannya tidak terlalu cepat.[2] Pada tahun 1923, populasi Beagle hampir mengalami kepunahan di Inggris karena banyak masyarakat di sana yang tidak lagi menyukai berburu bersama Beagle. Pada tahun 1930, Phillip Honeywood meenjadi pioner yang mendukung kegiatan berburu bersama Beagle sehingga populasi anjing ini kembali meningkat.[2] Selain digunakan sebagai anjing peliharaan keluarga, penegak hukum di beberapa negara juga menggunakan anjing ini sebagai anjing pelacak.[1] Ciri-ciri fisik dari anjing ini adalah tinggi 25–28 cm, berat 7–11 kg, tubuh berotot, mata berwarna coklat, telinga panjang, dengan corak bulu berwarna kuning-kecoklatan, hitam, dan putih."
          "",
      imageAsset: "images/dog2.jpg",
  ),
  Animal(
      name: "Teddie Molloy",
      species: "Basenji",
      age: "6 tahun",
      gender: "Laki-laki",
      weight: " 10 kg",
      description: ""
          "Basenji adalah anjing ras pemburu asal Afrika tengah. Salah satu dari 14 anjing paling 'primitif' di dunia. Di Amerika Utara, Basenji dianggap sebagai anjing ras sighthound yang mengejar dan menyerang segala mangsa secara diam-diam. Walaupun bisa menggeram, Basenji tidak menggonggong atau menyalak, tetapi bisa meniru suara menyalak bila dibesarkan bersama anjing jenis lain yang menyalak."
          "",
      imageAsset: "images/dog3.jpg",
  ),
  Animal(
      name: "Archie Turner",
      species: "Pug",
      age: "15 tahun",
      gender: "Perempuan",
      weight: " 10 kg",
      description: ""
          "Pug adalah ras anjing dengan wajah yang berkerut, moncong yang pendek, tubuh berukuran sedang, dan ekor yang melingkar. Anjing pug juga memiliki berbagai warna, dengan warna yang paling umum adalah warna hitam dan cokelat muda kekuningan. Pug dibawa dari Tiongkok ke Eropa pada abad ke-16 dan dipopulerkan di Eropa Barat oleh keluarga kerajaan Oranje dari Belanda dan keluarga kerajaan Stuart dari Britania.[2] Di Britania Raya pada abad ke-19, Ratu Victoria sangat menyukai pug dan menularkan kesukaannya ini kepada anggota keluarga kerajaan lainnya. Pug dikenal sebagai anjing yang bersahabat dan lemah lembut.[3] American Kennel Club mendeskripsikan anjing ini sebagai anjing yang 'bertabiat tenang dan menawan'.[4] Pug tetap populer hingga abad ke-21 dan menjadi hewan peliharaan beberapa artis ternama. Seekor anjing pug bahkan telah dinobatkan sebagai pemenang dalam Pameran Anjing Dunia pada tahun 2004."
          "",
      imageAsset: "images/dog4.jpg",
  ),
  Animal(
      name: "Kirstin Andrew",
      species: "Jerapah Somalia",
      age: "20 tahun",
      gender: "Perempuan",
      weight: " 50 kg",
      description: ""
          "Jerapah atau zarafah (nama ilmiah: Giraffa camelopardalis) adalah mamalia berkuku genap endemik Afrika dan merupakan spesies hewan tertinggi yang hidup di darat. Jerapah jantan dapat mencapai tinggi 4,8 sampai 5,5 meter dan memiliki berat yang dapat mencapai 1.360 kilogram. Jerapah betina biasanya sedikit lebih pendek dan lebih ringan. Jerapah berkerabat dengan rusa dan sapi tetapi dari suku yang berbeda, yaitu Giraffidae yang mencakup jerapah sendiri dan kerabat terdekatnya, okapi. Habitat aslinya mencakup area dari Chad sampai dengan Afrika Selatan Jerapah di timur laut Meksiko Nama spesiesnya camelopardalis diambil dari nama dalam latin, karena dianggap sebagai bastar unta (camel) dan macan tutul (leopard). Nama camelopardalis dipakai oleh Plinius senior dalam ensiklopedia yang ditulisnya. Nama ini juga dipakai sebagai nama salah satu rasi bintang."
          "",
      imageAsset: "images/giraffe1.jpg",
  ),
  Animal(
      name: "Cleo Churchill",
      species: "Hamster Roborovski",
      age: "1 tahun",
      gender: "Perempuan",
      weight: " 100 gram",
      description: ""
          "Roborovskis (Phodopus roborovskii) adalah spesies hamster yang terkecil dan tercepat dari semua hamster dimana paling sering disimpan sebagai binatang peliharaan. Hamster Roborovskis hidup di Gurun Gobi, padang pasir Mongolia dan Tiongkok utara. Mereka biasanya menggali lubang di antara 60 sampai 200 sentimeter dibawah tanah.Hamster Roborovski (Phodopus roborovskii) adalah hamster terkecil dan tercepat dari beberapa hamster yang lain. hamster ini berasal dari mongol bagian barat dan timur serta sebelah utara cina. Roborovski hidup di dalam lubang sedalam 50 – 150 cm. Umur hamster ini dapat hidup sekitar 2 sampai 3 tahun. Hamster sangat jarang menggigit dan cenderung takut pada manusia dibandingkan yang lain. Hamster jenis ini memiliki kumis yang sangat banyak. Hamster jenis ini tidak disarankan untuk pemula. Roborovski adalah hamster yang sangat romantis dan sayang satu sama lain. Jika hamster roborovski tinggal bersama-sama pada usia dini, mereka akan tidur bersama-sama, makan dan bermain bersama-sama. Roborovskis tumbuh sekitar 4 – 5cm panjang dan tidak sampai 7cm sebagaimana banyak sumber mengatakan. Memiliki tubuh berbentuk peluru dan kaki belakang yang sangat panjang untuk berjalan cepat. Dan berhati-hatilah saat anda memegangnya, karena hamster ini dapat berlari-lari dan ketakutan. Hamster ini menghasilkan 4-6 bayi hamster. Dan masa hamil hamser roborovski adalah 23-30 hari."
          "",
      imageAsset: "images/hamster1.jpg",
  ),
  Animal(
      name: "Shaunna Martinez",
      species: "Singa katanga",
      age: "15 tahun",
      gender: "Laki-laki",
      weight: " 50 kg",
      description: ""
          "Di antara berbagai jenis singa dan karakteristiknya, kita memiliki singa Kantaga, yang juga disebut sebagai Southwest (Panthera leo bleyenberghi). Subspesies singa besar ini mampu mencapai berat hingga 280 kilogram. Soal penampilannya, singa Kantaga menonjol karena karakteristik surai berwarna pasir dan tebalnya yang mengesankan. Bagian terluar surai ini dapat muncul dalam kombinasi warna kopi cokelat muda."
          "",
      imageAsset: "images/lion1.jpg",
  ),
  Animal(
      name: "Mahershala Tutgual",
      species: "Howler hitam",
      age: "2 tahun",
      gender: "Laki-laki",
      weight: " 2 kg",
      description: ""
          "Monyet howler hitam memiliki ekor yang dapat memegang tanpa rambut di sisi bawah, yang mereka gunakan untuk menggenggam saat bergerak. Geraham atas memiliki puncak yang tajam dan tajam yang digunakan untuk menggiling daun. Mereka bergerak perlahan menggunakan mode penggerak berkaki empat dan mereka memiliki kaki berjari lima dan menggenggam."
          "",
      imageAsset: "images/monkey1.jpg",
  ),
  Animal(
      name: "Chandra Latif ",
      species: "Oryctolagus cuniculus",
      age: "1 tahun",
      gender: "Laki-laki",
      weight: " 1 kg",
      description: ""
          "Kelinci Eropa (Oryctolagus cuniculus) atau coney[4] adalah spesies kelinci asli Semenanjung Iberia (termasuk Spanyol, Portugal, dan Prancis barat daya), Prancis barat, dan pegunungan Atlas utara di Afrika Barat Laut.[5] Ini telah diperkenalkan secara luas di tempat lain, seringkali dengan efek yang menghancurkan pada keanekaragaman hayati lokal. Namun, penurunan habitat aslinya (disebabkan oleh penyakit myxomatosis dan kelinci calicivirus, serta perburuan yang berlebihan dan hilangnya habitat) telah menyebabkan penurunan predator yang sangat bergantung, lynx Iberia (Lynx pardinus) dan elang kekaisaran Spanyol (Aquila adalbert). Ia dikenal sebagai spesies invasif karena telah diperkenalkan ke negara-negara di semua benua kecuali Antartika, dan telah menyebabkan banyak masalah dalam lingkungan dan ekosistem; khususnya, kelinci Eropa di Australia memiliki dampak yang menghancurkan, sebagian karena kurangnya pemangsa alami di sana."
          "",
      imageAsset: "images/rabbit1.jpg",
  ),
  Animal(
      name: "Eftychia Nefise",
      species: "Serigala Arktik",
      age: "5 tahun",
      gender: "Perempuan",
      weight: " 7 kg",
      description: ""
          "Serigala Greenland (Canis lupus orion) adalah upaspesies serigala abu-abu yang berasal dari Greenland. Lebih dari 90% wilayah persebaran serigala ini berada dalam batas-batas Taman Nasional Northeast Greenland, di mana populasi mereka pada tahun 1998 diperkirakan hanya berjumlah 55 serigala karena kurangnya persediaan makanan."
          "",
      imageAsset: "images/wolf1.jpg",
  ),
];


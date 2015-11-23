var phrases = [
  "Sayonara, baby",
  "Siempre tendremos París",
  "Yo soy tu padre",
  "¡Pueden que nos quiten la vida, pero jamás nos quitarán la libertad!",
  "Dar cera, pulir cera",
  "Mi tesoro",
  "Le haré una oferta que no rechazará"
];

var random = Math.floor((Math.random() * phrases.length));
var phrase = phrases[random]
$('h2').text(phrase)

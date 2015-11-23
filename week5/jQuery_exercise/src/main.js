var phrases = [
  "Sayonara, baby",
  "Siempre tendremos París",
  "Yo soy tu padre",
  "¡Pueden que nos quiten la vida, pero jamás nos quitarán la libertad!",
  "Dar cera, pulir cera",
  "Mi tesoro",
  "Le haré una oferta que no rechazará"
];

var refresh = function(){
  $('h2').text(phrases[Math.floor(Math.random() * phrases.length)]);
};
refresh();

$('#refresh').on('click', function(){
  refresh();
});

$(document).ready(function() {
    $('.add-phrase').keydown(function(event) {
        if (event.keyCode == 13) {
            phrases.push($('#add-phrase input').val());
            $('#add-phrase input').val('');
            return false;
         }
    });
});

$('#add-phrase').on('submit', function(){
  var new_phrase = $('input').val();
  phrases.push(new_phrase);
});
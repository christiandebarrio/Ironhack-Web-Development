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
var create_list = function () {
  $('.phrases-list').empty();
  for (var i = 0; i < phrases.length; i++) {
    var li_item = '<li class="item">' + 
                    phrases[i] + 
                    ' <a href="" class="remove-phrase"><img src="src/remove.png" alt="remove"></li>';
    $('.phrases-list').append(li_item);
  };
};

create_list();
refresh();
$('.phrases-list').hide();  


$('#refresh').on('click', function(){
  refresh();
});

// $(document).on('ready', function() {
//     $('.add-phrase').on('keypress', (function(event) {
//         if (event.keyCode == 13) {
//             event.preventDefault();
//             phrases.push($('#add-phrase input').val());
//             $('#add-phrase input').val('');
//             $('.phrases-list').empty();
//             create_list();
//          }
//     });
// });

$('#add-phrase').on('submit', function(event) {
  event.preventDefault();
  phrases.push($('#add-phrase input').val());
  $('#add-phrase input').val('');
  create_list();
});

$('.toggle-show').on('click', function(event){
  event.preventDefault();
  $('.phrases-list').toggle();
});

$('.phrases-list').on('click', '.remove-phrase', function(event){
  event.preventDefault();
  var phrase = $(event.currentTarget).parent().text().trim();
  var index = phrases.indexOf(phrase);
  if (index > -1) {
    phrases.splice(index, 1);
  };
  create_list();
});

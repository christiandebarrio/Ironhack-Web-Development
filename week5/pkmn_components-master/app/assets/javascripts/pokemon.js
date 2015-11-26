// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
(function () {
  "use strict";

  PokemonApp.Pokemon = function (pokemonUri) {
    this.id = PokemonApp.Pokemon.idFromUri(pokemonUri);
  };

  PokemonApp.Pokemon.prototype.render = function () {
    // console.log("Rendering pokemon: #" + this.id)

    var self = this;
    $.ajax({
      url: "/api/pokemon/" + this.id,
      success: function (response) {
        self.info = response;

        // console.log("Pokemon name: " + self.info.name);
        // console.log("Pokemon number: " + self.info.pkdx_id);
        // console.log("Pokemon height: " + self.info.height);
        // console.log("Pokemon weight: " + self.info.weight);

        $(".js-pkmn-name").text(self.info.name);
        $(".js-pkmn-number").text("#" + self.info.pkdx_id);
        $(".js-pkmn-height").text(self.info.height);
        $(".js-pkmn-weight").text(self.info.weight);
        $(".js-pkmn-hp").text(self.info.hp);
        $(".js-pkmn-attack").text(self.info.attack);
        $(".js-pkmn-defense").text(self.info.defense);
        $(".js-pkmn-sp-atk").text(self.info.sp_atk);
        $(".js-pkmn-sp-def").text(self.info.sp_def);
        $(".js-pkmn-speed").text(self.info.speed);
        $(".js-pkmn-type").empty();
        self.info.types.forEach (function (type) {
          $(".js-pkmn-type").append('<dd>' + type.name + '</dd>');
        });

        $(".js-pokemon-modal").modal("show");
      }
    });

  };

  PokemonApp.Pokemon.idFromUri = function (pokemonUri) {
    var uriSegments = pokemonUri.split("/");
    var secondLast = uriSegments.length -2;
    return uriSegments[secondLast];
  };

  $(document).on("ready", function () {
  $(".js-show-pokemon").on("click", function (event) {
      var $button = $(event.currentTarget);
      var pokemonUri = $button.data("pokemon-uri");

      var pokemon = new PokemonApp.Pokemon(pokemonUri);
      pokemon.render();
    });
  });

})();




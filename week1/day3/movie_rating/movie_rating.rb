require 'pry'
require 'imdb'


# Dividir el creador de graficos en una clase aparte
# Dividir el cargador de ficheros en una clase aparte
# Probar a realizar la iteración de los rating con find


class MovieRating
	attr_accessor :array_films

	def initialize file
		@file = IO.read(file)
		@array_films = []
		@films_ratings = []
	end

	def make_array_films
		@array_films = @file.split(/\n/)
	end

	def find_rating

		@films_ratings = @array_films.map do |film|

			result = Imdb::Search.new(film).movies[0].rating

			if result == nil
				0
			else
				(result).round
			end

		end

	end


	def print_result

	end

end

a = MovieRating.new("movie.txt")
p a.make_array_films

binding.pry
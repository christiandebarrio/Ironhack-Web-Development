require "pry"

class Finding_number
  #attr_accessor(:attemp, :total_attemps, :live, :total_lives)

  def initialize
    @attemp = 1
    @total_attemps = 5
    @live = 1
    @total_lives = 3
  end

  def start_game
  	puts "Hello! What's your name?"
  	@name = gets.chomp
    game
  end

  def game
    @attemp = 1
    @number_guessing = rand(1..100)
    puts "What number am I thinking? (1 to 100)"
    puts @attemp.to_s + "/" + @total_attemps.to_s + " attemp"
    @number_user = gets.chomp.to_i
  	while @number_user != @number_guessing && @attemp < @total_attemps
  		if @number_user < @number_guessing
  			puts "The number is higher than #{@number_user}. Try again..."
  		elsif @number_user > @number_guessing
  			puts "The number is lower than #{@number_user}. Try again..."
  		end
  		@attemp += 1
      #binding.pry
      puts @attemp.to_s + "/" + @total_attemps.to_s + " attemp"
      #puts @msg_attemps
  		@number_user = gets.chomp.to_i
  	end

  	if @number_user == @number_guessing
  		puts "Well Done #{@name}. You're a machine."
  	else
  		check_lives
  	end
  end

  def check_lives
    if @live < @total_lives
      puts "You lose " + @live.to_s + " of " + @total_lives.to_s + " lives."
      puts "The number I was thinking was " + @number_guessing.to_s + "."
      @live += 1
      game
    else
      puts "You lose " + @live.to_s + " of " + @total_lives.to_s + " lives."
      puts "The number I was thinking was " + @number_guessing.to_s + "."
      puts "Game over."
      puts "Do you want to play again? y or n."
      play_again = gets.chomp
      if play_again == "y"
        game
      end
    end
  end
end

new_name = Finding_number.new
new_name.start_game
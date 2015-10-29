class User

	def start
		ask_for_login
	
		check_password
		login
		enter_text
		count_number_of_words
		show_number_of_words
	end

	def ask_for_login
		puts "User:"
		@login_user = gets.chomp
		puts "Password:"
		@login_password = gets.chomp
		check_user
	end

	def valid_user?
		@user = "christian"
		@login_user == @user
	end

	def valid_password?
		@password = "pass"
		@login_password == @password
	end

	def login
		if @login_user && @login_password !== true
			puts "The user or password is incorrect"
			ask_for_login
		end
	end

	def enter_text
		puts "Write a phrase:"
		@text = input.chomp
	end

	def count_number_of_words
		@text.split().length
	end

	def show_number_of_words
		puts "#{count_number_of_words} words"
	end

end

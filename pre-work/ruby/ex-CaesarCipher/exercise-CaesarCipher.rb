def solve_cipher(input,shift)
	letters = input.split ""
	letters.map! { |letter| letter.ord + shift}
	
	letters.map! do |letter|
		if letter == " ".ord + shift
			letter = " ".ord
		elsif letter < "a".ord
			lettershift = letter - "a".ord
			letter = "z".ord + 1 + lettershift
		elsif letter > "z".ord
			lettershift = letter - "z".ord
			letter = "a".ord - 1 + lettershift
		else
			letter
		end
	end
	
	letters.map! { |letter| letter.chr}
	p letters.join
end

default_shift = -3
solve_cipher("aifmmp aifmmp",default_shift)

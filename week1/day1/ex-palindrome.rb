def is_palindrome?(palindrome_candidate)
	clean_candidate = palindrome_candidate.downcase.gsub(" ","").gsub(",", "")
	clean_candidate == clean_candidate.reverse
end

puts is_palindrome?("Race car")

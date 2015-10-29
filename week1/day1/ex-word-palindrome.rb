def is_wordpalindrome?(palindrome_candidate)
	palindrome_candidate.downcase!
	arr_candidate = palindrome_candidate.split
	arr_candidate == arr_candidate.reverse
end

puts is_wordpalindrome?("Fall leaves as soon as leaves fall")
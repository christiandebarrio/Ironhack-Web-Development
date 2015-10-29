def wordsorting(sentence)
	sentence_array = sentence.split
	sentence_array.each do |word|
		word.gsub!(/[.,¡!?¿]/, "")
	end
	sentence_array.sort_by { |word| word.upcase}
end


puts wordsorting("Esto se está complicando un poquito Christian.")
def is_anagram?(word1, word2)
	word1.downcase.chars.sort == word2.downcase.chars.sort
end

def combine_anagrams(words)
	ret=[]
	while ! words.empty? do
		temp=[words.first]
		words[1,words.count].each do |w|
			puts w
			 if is_anagram?(words[0],w)
				 temp << w
				 words.delete_at(words.rindex(w))
			 end
		end
		ret<< temp
		words.delete_at(0)
	end
	ret
end



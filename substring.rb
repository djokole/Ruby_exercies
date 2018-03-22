dictionary = ['are', 'you', 'blind', 'not', 'to', 'see']

def substring(string, dictionary)
	string = string.downcase
	words = string.split(/\W+/)
	wordHash = Hash.new
	dictionary.each do |item|
		words.each do |word|
			if word.include?(item)
				if wordHash.include?(word)
					wordHash[word] += 1
				else
					wordHash[word] = 1
				end
			end
		end
	end
	puts wordHash
end


substring("How are to to, you doing?", dictionary)
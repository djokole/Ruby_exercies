def cipher (string, places)
	string = string.downcase
	strArr = string.split(//)
	newArr = []
	strArr.each do |letter|
		if letter.ord == 32
			newOrd = letter.ord
		else
			newOrd = letter.ord + places.to_i
			if newOrd >= 123
			left = newOrd - 123
			newOrd = 97 + left
			end
		end
		newChr = newOrd.chr
		newArr.push(newChr)
	end
	print newArr.join("")
	puts ""
end

puts 'Enter the sentence you would like to cipher:'
input1 = gets.chomp
puts 'Enter a whole number to use for the cipher:'
input2 = gets.chomp


if input1.is_a?(String) && input2.to_i.is_a?(Integer)
	cipher(input1, input2)
else 
	puts "You need to put in proper values!"
end


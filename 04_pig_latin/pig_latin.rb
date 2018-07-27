#write your code here

def translate sentence
	word_array = sentence.split()
	new_sentence = ""
	counter = 0
	word_array.each do |word|
		if (counter == word_array.length - 1)
			new_sentence += translate_word(word)
		else
			new_sentence += translate_word(word)
			new_sentence += " "
		end
		counter += 1
	end
	new_sentence
end

def translate_word word
	if (count_consonants(word) == 3 || word[1..2] == "qu") 
		word = word[3...word.length] + word[0..2] + "ay"
	elsif (count_consonants(word) == 2 || word[0..1] == "qu") 
		word = word[2...word.length] + word[0..1] + "ay"
	elsif (count_consonants(word) == 1)
		word = word[1...word.length] + word[0] + "ay"	
	else
		word = word + "ay"
	word
	end
end


def count_consonants word 
	count = 0
	char_array = word.split("")
	char_array.each do |char|
		if (char =~ /[^aeiou]/) 
			count += 1
		else 
			return count
		end
	end
	count	
end


puts count_consonants("three")


#write your code here
LITTLE_WORDS = ["and", "a", "the", "over"]

	def echo sentence
		sentence
	end

	def shout sentence
		sentence.upcase
	end

	def repeat word, number_of_repeats=2
		sentence = word
		(number_of_repeats - 1).times do 
			sentence = sentence + " " + word 
		end
		sentence
	end

	def start_of_word word, num=1
		word[0, num]
	end

	def first_word sentence
		sentence.split()[0]
	end

	def titleize sentence
		sentence_array = sentence.split()
		new_title = sentence_array.shift.capitalize
		sentence_array.each do |word|
			if (LITTLE_WORDS.include? word)

				new_title += " #{word}"
			else 
				new_title += " #{word.capitalize}"
			end
		end
		new_title
	end




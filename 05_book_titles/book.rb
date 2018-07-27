class Book
  attr_reader :title

  ARTICLES = ["a", "the", "an"]
  CONJUNCTIONS = ["and", "but", "or"]
  PREPOSITIONS = ["in", "of", "over", "under"]
  LITTLE_WORDS = ARTICLES + CONJUNCTIONS + PREPOSITIONS

  def title=(given_title)
    words = given_title.split()
    new_title = words[0].capitalize
    words[1..-1].each do |word|
    	if LITTLE_WORDS.include? word
    		new_title += " " + word
   		else
    		new_title += " " + word.capitalize  
    	end
     end
    @title = new_title
  end

end

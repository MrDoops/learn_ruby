=begin Could get all but the last test

def translate(word)
	word_split = word.split(" ")

	if word_split.size == 1
		prefix = word[0, %w(a e i o u).map{|vowel| "#{word}aeiou".index(vowel)}.min]
		"#{word[prefix.length..-1]}#{prefix}ay"
	else
		pig_words = []
		word_split.each do |i|
			pig_words.push(translate(i))
		end
		pig_words.join(" ")
	end
end

=end

#Found this solution on https://github.com/tempeste/learn_ruby/blob/master/04_pig_latin/pig_latin.rb
# It's much more elegant than I came up with. I think I need to work on Regular Expressions more
def translate(phrase) #splits up the phrase and passes each word into rearranage()
  #Joins back into a phrase for return after rearrange
  phrase.split(" ").map { |word| rearrange(word) }.join(" ") 
end 

def rearrange(word) #Set boolean if word meets criteria (match var)
  match = word.match(/^((?:qu|[bcdfghjklmnpqrstvwxz])*)(.*)$/) #criteria defined by regex
  # If regex criteria met, recombine the match data into the new word
  match ? match[2] + match[1] + "ay" : word 
end
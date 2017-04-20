def echo(arg)
	arg
end

def shout(arg)
	arg.upcase
end

def repeat(a, times = 2) # use the = after an arg for default value
	([a] * times).join(" ")
end

def start_of_word(word, a)
	word[0..a-1]
end

def first_word(arg)
	arg.split(" ")[0]
end

def titleize(arg)
	words = arg.split.map do |word| #Break up arg into an array of word called "words"
		if %w(the and over is of a).include?(word) # checks for exceptions to capitalizing
			word
		else
			word.capitalize # capitlize first letter of word because not an exception
		end
	end
	words.first.capitalize! #Capitalize first character regardless
	words.join(" ") #join the array of modified split words (word)
end
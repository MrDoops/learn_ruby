class Book
	attr_reader :title #We can use default reader 1 line
	
	def title=(str) #Instead of default accessor, use custom with properties
		@title = titleize(str)
	end

	def titleize(str)
		exceptions = %w{the a an and but or for nor in of} #define which words are not to be capitalized
		#split into map function with index to ommit first words from exceptions, then capitalize everything else and join
		str.split.each_with_index.map{|x, index| exceptions.include?(x) && index > 0 ? x : x.capitalize }.join(" ")
		#the line is a bit too long for my taste
	end
end

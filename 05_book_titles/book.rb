class Book
# write your code here
	attr_accessor :title

	def title

		exceptions = ["a","the","an","of","and","in"]
		title_cap = []
		title_array = @title.split(" ")

		title_array.each do |word|
			if not exceptions.include? word
				word = word.capitalize
				title_cap.push(word)
			else
				title_cap.push(word)
			end
		end
		title_cap[0] = title_cap[0].capitalize
		@title = title_cap.join(" ")		
	end

end

#write your code here
def echo text
	puts text
	text
end

def shout text
	puts text.upcase
	text.upcase
end

def repeat(text, times=2)
	text = text + " "
	text = text * times
	text.strip
end

def start_of_word (text, letters)
	ntext = ""
	(0..(letters-1)).each do |n|
		ntext = ntext + text[n]
	end
	ntext
end

def first_word text
	text_array = text.split(" ")
	text_array[0]
end

def titleize text
	text = text.capitalize
	words_no_cap =  ["and", "or", "over", "the"]

	text_array = text.split(" ")
	text_array.each do |word|
		if (not words_no_cap.include? word)
			word[0] = word[0].upcase
		end
	end

	text = text_array.join(" ")
end
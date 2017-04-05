#write your code here
class String
	def isCap?
		self[0] == self[0].upcase
	end
end

def translate text
	vowels = ["a", "e", "i", "o", "u"]
	ntext_array = []
	text_array = text.split(" ")
	capreq = false

	if text_array[0].isCap?
		capreq = true
		text_array[0].downcase
	end

	text_array.each do |word|

		if vowels.include? word[0]
			ntext_array.push(word + "ay")
		elsif word[0..1] == "qu"
			ntext = word[2..-1]
			ntext += word[0..1] + "ay"
			ntext_array.push(ntext)
		elsif not vowels.include? word[0]
			if word[1..2] == "qu"
				ntext = word[3..-1]
				ntext += word[0..2] + "ay"
				ntext_array.push(ntext)
			elsif not vowels.include? word[1]
				if not vowels.include? word[2]
					ntext = word[3..-1]
					ntext += word[0..2] + "ay"
					ntext_array.push(ntext)
				else
					ntext = word[2..-1]
					ntext += (word[0..1] + "ay")
					ntext_array.push(ntext)
				end
			else
				ntext = word[1..-1]
				ntext += (word[0] + "ay")
				ntext_array.push(ntext)
			end
		end
	end

	if capreq
		ntext_array.join(" ").capitalize
	else
		ntext_array.join(" ")
	end
end


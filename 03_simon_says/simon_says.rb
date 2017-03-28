#write your code here
def echo text
	puts text
	text
end

def shout text
	puts text.upcase
	text.upcase
end

def repeat(text, times=1)
	repeat = 1
	while repeat <= times
	 text = text + " " + text
	end
end


#write your code here
def add(num1, num2)
	num1 + num2
end
	
def subtract(num1, num2)
	num1 - num2
end

def sum(array)
	total = 0
	array.each do |num|
		total += num
	end
	total	
end

def multiply (num_array)
	total = 1
	num_array.each do |num|
		total *= num
	end
	total
end 

#write your code here
def add operand1, operand2
	operand1 + operand2
end

def subtract operand1, operand2
	operand1 - operand2
end

def sum num_array
	total = 0
	num_array.each do |num|
		total += num
	end
	total
end
	
def multiply *args
	total = 1 
	args.each do |num|
		total *= num
	end
	total
end

def power base, exponent
	total = 1
	exponent.times do 
		total *= base
	end
	total
end

def factorial num
	total = 1 
	if (num <= 1)
		1
	end
	
	while (num >= 1) do
		total *= num
		num -= 1
	end
	total
end

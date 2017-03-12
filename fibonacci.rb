@a = 0
@b = 1
@c = 0
@fibonacci_end = 0
@iterations = 0

def if_negative				# checks for negative number
	if @fibonacci_end < 0
	puts "Don't be silly, please enter a positive integer"
	@fibonacci_end = gets.chomp.to_i
	if_negative
	end
end

def create_fibonacci		# master method to calculate fibonacci
	@c = @a + @b
	puts "#{@c}"
	@a = @b
	@b = @c
end

def choose_fibonacci		# decide if by iterations or limit
	puts "Welcome to Gabe's Fibonacci Sequence Generator."
	puts "Would you like to calulate a certain number of"
	puts "iterations or to a high end limit?"
	puts "Enter 'iterations' or 'limit'"
	@type = gets.chomp
	if @type == "iterations"
		iterations_fibonacci
	elsif @type == "limit"
		limit_fibonacci
	else 
		puts ""
		puts "Please enter either 'iterations' or 'limit'"
		puts ""
	choose_fibonacci
	end
end

def iterations_fibonacci	# calculate by iterations
	puts "Calculate Fibonacci Sequence - How many iterations?"
	puts ""
	@fibonacci_end = gets.chomp.to_i
	if_negative
	puts "Starting Fibonacci Sequence to #{@fibonacci_end} iterations"
	puts "1"
	while @iterations < @fibonacci_end
		create_fibonacci
		@iterations += 1
	end
	puts "Ending Fibonacci Sequence to #{@fibonacci_end} iterations"
end

def limit_fibonacci			# calculate by high end limit
	puts "Calculate Fibonacci Sequence - Enter Limit"
	puts ""
	@fibonacci_end = gets.chomp.to_i
	if_negative
	puts "Starting Fibonacci Sequence 1 - #{@fibonacci_end}"
	puts "1"
	while @a + @b < @fibonacci_end
		create_fibonacci
	end
	puts "Ending Fibonacci Sequence 1 - #{@fibonacci_end}"
end

choose_fibonacci
def multiply(number)
	# return 1 : 2 : 3 as string
	code = number.to_s + (number*2.0).to_s + (number*3.0).to_s
	return code
end

def check_numbers(code)

	numbers = '123456789'

	for x in numbers.chars
		if code.count(x) < 1
			puts "#{x} not found."
			return false
		elsif code.count(x) > 1 
			puts "Too many #{x}."
			return false
		end
	end
	return true

end

check_numbers('123456689')
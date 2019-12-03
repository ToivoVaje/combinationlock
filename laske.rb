def multiply(number)
	# return 1 : 2 : 3 as string
	code = number.to_s + (number*2).to_s + (number*3).to_s
	return code
end

#check if the number has one of each digits (except 0)
def check_numbers(code)

	numbers = '123456789'
	puts "Now checking #{code}: "

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

for i in [*100..333] do
	current = multiply(i)
	if check_numbers(current) 
		puts "** Found: #{current} **"
		break
	end
  end
#check_numbers(multiply(100))
puts "What was the amount of the check?"
bill_amount = (/(\d+[.]\d+)/.match(gets.chomp))[1].to_f
puts bill_amount

puts "What percentage do you want to tip?"
tip = (/(\d+[.]\d+)/.match(gets.chomp))[1].to_f

def tip_amount(bill_amount, tip)
	return (tip/100.0)*bill_amount
end

puts "The tip amount is $#{tip_amount(bill_amount, tip)}"

def total_with_grat(bill_amount,tip)
	return tip_amount(bill_amount,tip)+bill_amount
end

puts "The total with gratuity is $#{total_with_grat(bill_amount,tip)}"
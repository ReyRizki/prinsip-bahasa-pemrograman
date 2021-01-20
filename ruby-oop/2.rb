print("Enter temperature in Fahrenheit: ")
f = gets.to_f

puts "Temperature #{f} degree Fahrenheit = #{'%.2f' % [(f - 32) * 5 / 9]} degree Celcius"

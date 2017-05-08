card_number = "4929735477250543"
valid = false
total = 0

card_number.chars.each_with_index do |num, index|
    current_digit = num.to_i
    if index.even?
      current_digit *= 2
    end

    if current_digit > 9
      current_digit.to_s.chars.each do |char|
          total += char.to_i
      end

    else
      total += current_digit
    end
end

if total % 10 == 0
   valid = true
   puts "Your number is valid."
else
   puts "Your number is invalid."
end

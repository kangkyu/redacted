puts "user's input please"
user_input = gets.chomp

array_to_inspect = user_input.split(" ")
array_of_redact = []
loop do 
  puts "redact please"
  redact = gets.chomp
  array_of_redact.push redact
  puts "another redact?"
  unless gets.chomp == "yes"
    break
  end
end

puts array_of_redact.inspect
puts array_to_inspect.inspect

result = ""
is_redacted = false
array_to_inspect.each do |word|
  array_of_redact.each do |redact|
    is_redacted = true if word.downcase == redact.downcase
  end
  if is_redacted
    result = result + "REDACTED" + " "
  else
    result = result + word + " "
  end
  is_redacted = false
end

puts result


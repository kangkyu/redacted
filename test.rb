def ask_input(prompt)
  puts prompt
  gets.chomp
end

def add_input_to(a)
  a.push ask_input("redact please")
  puts a.inspect
  if ask_input("another redact?") == "yes"
    add_input_to(a)
  end
end

def array_of_redact
  b = []
  add_input_to b
  b
end

def is_redacted(word)
  redacted = false
  array_here = array_of_redact
  array_here.each do |redact|
    redacted = true if word.downcase == redact.downcase
  end
  redacted
end

puts is_redacted("am")
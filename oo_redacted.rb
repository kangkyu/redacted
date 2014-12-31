def ask_input(prompt)
  puts prompt
  gets.chomp
end

def add_input_to(a_array)
  a_array.push ask_input("redact please")
  if ask_input("another redact?") == "yes"
    add_input_to(a_array)
  end
end

def array_of_redact
  b_array = []
  add_input_to b_array
  b_array
end

def is_redacted(word, c_array)
  redacted = false
  c_array.each do |redact|
    redacted = true if word.downcase == redact.downcase
  end
  redacted
end

def array_to_inspect
  ask_input("user's input please").split(" ")
end

def output
  result = ""
  d_array = array_of_redact
  array_to_inspect.each do |word|
    if is_redacted(word, d_array)
      result += "REDACTED" + " "
    else
      result += word + " "
    end
  end
  result
end

puts output


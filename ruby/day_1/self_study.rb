# Print the string "Hello World."
puts 'Hello World.'


# For the string "Hello, Ruby," find the index of the word "Ruby."
 statement = 'Hello, Ruby,'
 puts statement.index("Ruby")


# Print your name ten times.
x = 1
while x <= 10
    puts 'kipp'
    x = x + 1
end


# Print the string "This sentence is number 1," where the number 1 changes from 1 to 10.
x = 1
while x <= 10
    puts "This sentence is number #{x},"
    x = x + 1
end


# Guessing game 1 - 10
guess = nil
answer = rand(10)
while guess != answer
    puts 'guess a number: '
    guess = gets.to_i
end
puts 'Congrats!'
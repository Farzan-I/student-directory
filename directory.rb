def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  
  students = []
  
  name = gets.chomp
  
  # Exercise 5
  while !name.empty? do
    puts "Please enter #{name}'s hobbies:"
    hobbies = gets.chomp
    puts "Please enter #{name}'s country of birth:"
    birth_country = gets.chomp
    puts "Please enter #{name}'s height (in cm):"
    height = gets.chomp

    students << { name: name, cohort: :November, hobbies: hobbies, 
                  birth_country: birth_country, height: height }

      if students.count == 1
        puts "Now we have #{students.count} student"
      else
        puts "Now we have #{students.count} students"
      end
    name = gets.chomp
  end
 
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# Exercise 5: to print out the new hashes
def print(students)
  counter = 0
  while counter < students.count
    puts "#{students[counter][:name]} (#{students[counter][:cohort]} cohort) (hobbies: #{students[counter][:hobbies]}) (Country of birth: #{students[counter][:birth_country]}) (Height: #{students[counter][:height]}cm)"
    counter += 1
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

def selected_students(students)
  puts "Type a letter to see students that start with this letter"
  user_input = gets.chomp
  students.select do |student| 
    if student[:name].start_with?(user_input)
      puts student
    end
  end
end

students = input_students
print_header
print(students)
print_footer(students)
print(selected_students(students))
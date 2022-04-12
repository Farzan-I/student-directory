def input_students
  puts "Please enter the names of the students".center(50)
  puts "To finish, just hit return twice".center(50)
  
  students = []
  
  name = gets.chomp
  
  while !name.empty? do
    puts "Please enter #{name}'s hobbies:".center(50)
    hobbies = gets.chomp
    puts "Please enter #{name}'s country of birth:".center(50)
    birth_country = gets.chomp
    puts "Please enter #{name}'s height (in cm):".center(50)
    height = gets.chomp

    students << { name: name, cohort: :November, hobbies: hobbies, 
                  birth_country: birth_country, height: height }

      if students.count == 1
        puts "Now we have #{students.count} student".center(50)
      else
        puts "Now we have #{students.count} students".center(50)
      end
    name = gets.chomp
  end
 
  students
end

def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end

def print(students)
  counter = 0
  while counter < students.count
    puts "#{students[counter][:name]} (#{students[counter][:cohort]} cohort) (hobbies: #{students[counter][:hobbies]}) (Country of birth: #{students[counter][:birth_country]}) (Height: #{students[counter][:height]}cm)".center(50)
    counter += 1
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(50)
end

def selected_students(students)
  puts "Type a letter to see students that start with this letter".center(50)
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
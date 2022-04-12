def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  
  students = []
  
  name = gets.chomp
  
  while !name.empty? do

    students << { name: name, cohort: :November }

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

def print(students)
  students.each.with_index(1) do |student, index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

# Exercise 2
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
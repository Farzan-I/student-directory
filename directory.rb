def input_students
  puts "Please enter the names of the students".center(50)
  puts "To finish, just hit return twice".center(50)
  students = []
  name = gets.chomp
  if name.empty?
    name = "Unspecified name"
  end

  puts "Please enter #{name}'s cohort:"
  cohorts = ["January", "February", "March", "April", "May", "June", "July", 
              "August", "September", "October", "November", "December"]
  
  while true
    cohort = gets.chomp.capitalize
    if cohort.empty?
      cohort = "Unspecified cohort"
      break
    elsif cohorts.include?(cohort)
      cohort
      break
    end
  end
  cohort

  until name == "Unspecified name" && cohort == "Unspecified cohort" do
    students << { name: name, cohort: cohort.to_sym }
      if students.count == 1
        puts "Now we have #{students.count} student".center(50)
      else
        puts "Now we have #{students.count} students".center(50)
      end
    name = gets.chomp
    if name.empty?
      name = "Unspecified name"
    end

    puts "Please enter #{name}'s cohort:"
    while true 
      cohort = gets.chomp.capitalize
      if cohort.empty?
        cohort = "Unspecified cohort"
        break
      elsif cohorts.include?(cohort)
        cohort
        break
      end
    end
    cohort
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
    puts "#{students[counter][:name]} (#{students[counter][:cohort]} cohort)".center(50)
    counter += 1
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(50)
end

students = input_students
print_header
print(students)
print_footer(students)
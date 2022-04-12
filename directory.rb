def input_students
  puts "Please enter the names of the students".center(50)
  puts "To finish, just hit return twice".center(50)
  students = []
  name = gets.strip
  if name.empty?
    name = "Unspecified"
  end

  puts "Please enter #{name}'s cohort:"
  cohorts = ["January", "February", "March", "April", "May", "June", "July", 
              "August", "September", "October", "November", "December"]
  
  while true
    cohort = gets.strip.capitalize
    if cohort.empty?
      cohort = "Unspecified"
      break
    elsif cohorts.include?(cohort)
      cohort
      break
    end
  end
  cohort

  until name == "Unspecified" && cohort == "Unspecified" do
    students << { name: name, cohort: cohort.to_sym }
      if students.count == 1
        puts "Now we have #{students.count} student".center(50)
      else
        puts "Now we have #{students.count} students".center(50)
      end
    name = gets.strip
    if name.empty?
      name = "Unspecified"
    end

    puts "Please enter #{name}'s cohort:"
    while true 
      cohort = gets.strip.capitalize
      if cohort.empty?
        cohort = "Unspecified"
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
  students_cohorts = {}

  students.each do |student|
    cohort = student[:cohort]
    if students_cohorts[cohort] == nil
      students_cohorts[cohort] = []
    end
    students_cohorts[cohort].push(student[:name])
  end

  students_cohorts.each do |cohort, name|
    puts "#{cohort} cohort: #{name.join(", ")}"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(50)
end

students = input_students
print_header
print(students)
print_footer(students)
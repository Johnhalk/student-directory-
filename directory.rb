#first we print the list of students


def print_header
  puts "The students of Villains Academy"
  puts " ---------------- "
end

def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  # get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array

    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name from user
    name = gets.chomp
  end

  #return the array of students

  students
  end

  def print(students)
     puts "Please enter the first letter of the student's name:"
     letter = gets.chomp.downcase
     select_students = students.select { |student| student[:name][0] == letter }
      select_students.each.with_index(1) do |student, i|
        puts "#{i}: #{select_students[0]} (#{student[:cohort]} cohort)"
  end
end


def print_footer(names)
  puts "Overall we have #{names.count} great students"
end

def short_names(students)
  puts students[:name].length
end
# now we must call upon the methods

students = input_students
print_header
print(students)
print_footer(students)

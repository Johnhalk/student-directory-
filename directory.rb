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
  #return the artray of students
  students
  end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
    #by turning our arrays into hashes we can create a clearer code for reading purposes, now it is clear that each variable is name and cohort.
  end
end

def print_footer(names)
  puts "Overall we have #{names.count} great students"
end

# now we must call upon the methods
students = input_students
print_header
print(students)
print_footer(students)

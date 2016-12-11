def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  #array was not defined, used {} should have been [], now has been amended
  # get the first name
  name = gets.chomp #space between gets and .chomp
  # while the name is not empty, repeat this code
  while !name.empty? do  #should have been while not when, also !name and empty? necessary
  # add the student hash to the array
  # < changed to << as we are added things to the empty array
  students << {name: name, cohort: :november}  #space between : removed : between name: and name, also added in comma.
  puts "Now we have #{students.count} students" #students not student
  # get another name from the user
  name = gets.chomp # said get.chomp changed to gets.chomp
  end
  # return the array of students
  students
end

def print_header #corrected to print_header
  puts "The students of my cohort at Makers Academy" #added "" correctly
  puts " ------------- " #added propper quotations
end

def print(students)
  students.each do |student|  #used \ \ rather than ||
    puts "#{student[:name]} (#{student[:cohort]} cohort)"  #hashes and arrays notation mixed up, fixed
  end
end

def print_footer(names)  #method was not using variable names, fixed.
  puts "Overall, we have {names.count} great students" # should be puts not prints
end


students = input_students #method was input_students not input-students
print_header
print(students) #{} changes to ()
print_footer(students) # [] changes to ()

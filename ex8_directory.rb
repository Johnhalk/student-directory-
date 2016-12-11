months = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]

# create a list of students

students = [
  #{name: "Joffrey Baratheon", cohort: :november, height: "179cm", hobbies: "Surfing" age: "29"}
  {name: "Joffrey Lannister", cohort: :april},
  {name: "Khan", cohort: :march},
  {name: "Simon Cowell", cohort: :july},
  {name: "Cersei Lannister", cohort: :february}
]

def input_students
  puts "Please enter the names of the students"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  puts "And the cohort?"
  cohort = gets.chomp
  if !@months.include?(cohort)
    cohort = :january
  end
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: cohort.to_sym, height: "178cm", hobbies: "swimming", age: "29"}
    case students.length
    when 1 then puts "We have 1 students"
    when 0 then puts "We have no students"
    else puts "Now we have #{students.count} students"
    # get another name from the user
  end
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
#adding height, hobbies and age   :   Centering too.
def print_body(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort) #{student[:height]} #{student[:hobbies]} #{student[:age]}".center(35)
  end
end

def print_numbered(students)
  students.each_with_index do |student, index|
    puts "#{index}. #{student[:name]}".ljust(4)
    puts "(#{student[:cohort]} cohort) #{student[:height]} height #{student[:hobbies]} hobby #{student[:age]} old".center(35)
end
end

def print_footer(students)
  case students.length
  when 1 then puts "We have 1 great student."
  when 0 then puts "We have no students."
  else puts "Overall, we have #{students.count} great students"
end
end


def print_specific(students)
  puts "Pick the first letter of the students you need."
  specific = gets.chomp

  set_students = @students.select {|name:,cohort:,height:,hobbies:,age:| name.start_with?(specific)}
 set_students.each_with_index do |student,index|
   puts "#{index}.#{student[:name]}(#{ student[:cohort]} cohort)".center(35)
 end
 end

 #finding names with length less than 12

 def print_under_twelve
   set_students = @students.select {|name:, cohort:| name.length < 12 }
   set_students.each_with_index do |student, index|
     puts "#{index}. #{student [:name]} (#{student[:cohort]} cohort) #{student[:heigh]} #{student[hobbies]} #{student[age]}"
   end
 end

 #replacing each with a loop

 def print_loop
   i = 0
   while i < students.length
     array = students[i]
     puts array
     i +=1
   end
 end



students = input_students
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)
print_loop
print_under_twelve
print_numbered
print_specific

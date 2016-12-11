#first we print the list of students

student_count = 11

students = [
 {name: "Dr. Hannibal Lecter", cohort: :november},
 {name: "Darth Vader", cohort: :november},
 {name: "Nurse Ratched", cohort: :november},
 {name: "Michael Corleone", cohort: :november},
 {name: "Alex DeLarge", cohort: :november},
 {name: "The Wicked Witch of the West", cohort: :november},
 {name: "Terminator", cohort: :november},
 {name: "Freddy Krueger", cohort: :november},
 {name: "The Joker", cohort: :november},
 {name: "Joffery Baratheon", cohort: :november}, # he WOULD be there.
 {name: "Norman Bates", cohort: :november}
]
# replace the [] brackets with {} for hashes
def print_header
  puts "The students of Villains Academy"
  puts " ---------------- "
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

print_header
print(students)
print_footer(students)

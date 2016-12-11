#first we print the list of students

student_count = 11

students = [
 "Dr. Hannibal Lecter",
 "Darth Vader",
 "Nurse Ratched",
 "Michael Corleone",
 "Alex DeLarge",
 "The Wicked Witch of the West",
 "Terminator",
 "Freddy Krueger",
 "The Joker",
 "Joffery Baratheon",  # he WOULD be there.
 "Norman Bates"
]

# and now print them

puts "The students of Villains Academy"
puts " ----------------- "
students.each do |student|
  puts student
end


#finally we print the total
puts "Overall, we have #{student_count} great students"

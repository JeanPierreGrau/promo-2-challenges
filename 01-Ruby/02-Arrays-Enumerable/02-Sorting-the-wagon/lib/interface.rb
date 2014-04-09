require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name

  students << name

end while name != ""

 wagon_sort = wagon_sort(students)

 students.each do |student|
 puts "-#{student}"

 end
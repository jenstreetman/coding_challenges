def gradingStudents(grades)
  (grades.length).times do |grade|
    if grades[grade] >= 38
      if grades[grade] % 5 >= 3
        grades[grade] = grades[grade] + 5 - (grades[grade] % 5)
      end
    end
  end
  return grades
end

math = [37, 38, 42, 51, 67, 68, 69, 70, 85, 88, 92, 98]

gradingStudents math
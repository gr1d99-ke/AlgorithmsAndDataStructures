def gradingStudents(grades)
  # Write your code here

  new_grades = []

  grades.each do |grade|
    if grade < 38
      new_grades << grade
    else
      rounded = (grade / 5.0).ceil * 5

      if (rounded - grade) >= 3
        new_grades << grade
      else
        new_grades << rounded
      end

    end
  end

  new_grades
end

p gradingStudents([4, 73, 67, 38, 33])

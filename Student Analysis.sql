select std.roll_number, std.name from student_information as std
inner join examination_marks as ex 
on std.roll_number = ex.roll_number
GROUP BY ex.roll_number
HAVING sum(ex.subject_one + ex.subject_two + ex.subject_three) < 100;
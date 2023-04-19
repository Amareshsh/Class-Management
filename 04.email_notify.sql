select stu.email_id
from mycl.students stu
INNER JOIN mycl.stud_classes stcl
ON stcl.student_id = stu.student_id
INNER JOIN mycl.schedule sche
ON sche.class_id = stcl.class_id
WHERE sche.day_of_week = 1;
-- subject table
INSERT INTO mycl.subjects( name, type)
	VALUES ('maths', 'theory');
	
INSERT INTO mycl.subjects( name, type)
	VALUES ('hindi', 'theory');
	
INSERT INTO mycl.subjects( name, type)
	VALUES ('science', 'theory');
	
INSERT INTO mycl.subjects( name, type)
	VALUES ('english', 'theory');

-- teacher table
INSERT INTO mycl.teacher( email_id, date_of_join, date_of_birth, name)
	VALUES ( 'hitesh@gmail', '2016-09-10', '2016-09-10', 'hitesh');
	
	
INSERT INTO mycl.teacher( email_id, date_of_join, date_of_birth, name)
	VALUES ( 'naresh@gmail', '2017-09-10', '2000-09-10', 'naresh');

-- classes table

INSERT INTO mycl.classes( building_name, room_no, subject_id)
	VALUES ( 'b1', 'r1', 1);

INSERT INTO mycl.classes( building_name, room_no, subject_id)
	VALUES ( 'b2', 'r2', 2);

-- teacher classes table
INSERT INTO mycl.teacher_classes(
	teacher_id, class_id)
	VALUES (1, 1);

INSERT INTO mycl.teacher_classes(
	teacher_id, class_id)
	VALUES (2, 2);

-- students table
INSERT INTO mycl.students( email_id, date_of_join, date_of_birth, name)
	VALUES ( 'tony@gmail.com', '2010-06-22', '2000-06-22', 'tony');
	
INSERT INTO mycl.students( email_id, date_of_join, date_of_birth, name)
	VALUES ( 'mayank@gmail.com', '2010-06-22', '2000-06-22', 'mayank');
		
INSERT INTO mycl.students( email_id, date_of_join, date_of_birth, name)
	VALUES ( 'narayan@gmail.com', '2010-06-22', '2000-06-22', 'narayan');
	
INSERT INTO mycl.students( email_id, date_of_join, date_of_birth, name)
	VALUES ('sheetal@gmail.com', '2007-06-22', '1997-06-22', 'sheetal');


-- student classes table
INSERT INTO mycl.stud_classes(
	student_id, class_id, mandatory)
	VALUES (1, 1, False);
	
INSERT INTO mycl.stud_classes(
	student_id, class_id, mandatory)
	VALUES (2, 1, True);
	
INSERT INTO mycl.stud_classes(
	student_id, class_id, mandatory)
	VALUES (3, 2, False);
	
INSERT INTO mycl.stud_classes(
	student_id, class_id, mandatory)
	VALUES (2, 2, True);

-- schedule table
INSERT INTO mycl.schedule( class_id, start_time, end_time, day_of_week)
	VALUES ( 1, '12:00', '13:00', 1);

INSERT INTO mycl.schedule( class_id, start_time, end_time, day_of_week)
	VALUES ( 1, '12:00', '13:00', 0);
	
INSERT INTO mycl.schedule( class_id, start_time, end_time, day_of_week)
	VALUES ( 2, '13:00', '14:00', 0);

INSERT INTO mycl.users( password, last_login, name, teacher_id, student_id)
	VALUES ( 'asdfa3r', '2011-01-01 00:00:00'::TIMESTAMP WITH TIME ZONE, 'Arun', null, null);
-- subject table
INSERT INTO mycl.subjects( name, type)
	VALUES ('maths', 'theory');
	
INSERT INTO mycl.subjects( name, type)
	VALUES ('hindi', 'theory');
	
INSERT INTO mycl.subjects( name, type)
	VALUES ('science', 'theory');
	
INSERT INTO mycl.subjects( name, type)
	VALUES ('english', 'theory');

INSERT INTO mycl.subjects( name, type)
	VALUES ('computer science', 'theory');
	
INSERT INTO mycl.subjects( name, type)
	VALUES ('eletrical', 'theory');
	
INSERT INTO mycl.subjects( name, type)
	VALUES ('CAD', 'theory');
	
INSERT INTO mycl.subjects( name, type)
	VALUES ('telecommunications', 'theory');


-- teacher table
INSERT INTO mycl.teacher( email_id, date_of_join, date_of_birth, name)
	VALUES ( 'hitesh@gmail', '2016-09-10', '2016-09-10', 'hitesh');
	
	
INSERT INTO mycl.teacher( email_id, date_of_join, date_of_birth, name)
	VALUES ( 'naresh@gmail', '2017-09-10', '2000-09-10', 'naresh');

INSERT INTO mycl.teacher( email_id, date_of_join, date_of_birth, name)
	VALUES ( 'koturesh@gmail', '2016-09-10', '2016-09-10', 'koturesh');
	
	
INSERT INTO mycl.teacher( email_id, date_of_join, date_of_birth, name)
	VALUES ( 'mahesh@gmail', '2017-09-10', '2000-09-10', 'mahesh');

INSERT INTO mycl.teacher( email_id, date_of_join, date_of_birth, name)
	VALUES ( 'suresh@gmail', '2016-09-10', '2016-09-10', 'suresh');
	
	
INSERT INTO mycl.teacher( email_id, date_of_join, date_of_birth, name)
	VALUES ( 'Tammana@gmail', '2017-09-10', '2000-09-10', 'tammman');

INSERT INTO mycl.teacher( email_id, date_of_join, date_of_birth, name)
	VALUES ( 'komal@gmail', '2016-09-10', '2016-09-10', 'komal');
	
	
INSERT INTO mycl.teacher( email_id, date_of_join, date_of_birth, name)
	VALUES ( 'soma@gmail', '2017-09-10', '2000-09-10', 'soma');

-- classes table

INSERT INTO mycl.classes( building_name, room_no, subject_id)
	VALUES ( 'b1', 'r1', 1);

INSERT INTO mycl.classes( building_name, room_no, subject_id)
	VALUES ( 'b2', 'r2', 2);

INSERT INTO mycl.classes( building_name, room_no, subject_id)
	VALUES ( 'b1', 'r3', 3);

INSERT INTO mycl.classes( building_name, room_no, subject_id)
	VALUES ( 'b2', 'r4', 4);

INSERT INTO mycl.classes( building_name, room_no, subject_id)
	VALUES ( 'b2', 'r5', 5);

INSERT INTO mycl.classes( building_name, room_no, subject_id)
	VALUES ( 'b2', 'r6', 6);

INSERT INTO mycl.classes( building_name, room_no, subject_id)
	VALUES ( 'b2', 'r7', 7);

-- teacher classes table
INSERT INTO mycl.teacher_classes(
	teacher_id, class_id)
	VALUES (1, 1);

INSERT INTO mycl.teacher_classes(
	teacher_id, class_id)
	VALUES (2, 2);

INSERT INTO mycl.teacher_classes(
	teacher_id, class_id)
	VALUES (3, 3);

INSERT INTO mycl.teacher_classes(
	teacher_id, class_id)
	VALUES (4, 4);

INSERT INTO mycl.teacher_classes(
	teacher_id, class_id)
	VALUES (5, 5);

INSERT INTO mycl.teacher_classes(
	teacher_id, class_id)
	VALUES (6, 6);

-- students table
INSERT INTO mycl.students( email_id, date_of_join, date_of_birth, name)
	VALUES ( 'tony@gmail.com', '2010-06-22', '2000-06-22', 'tony');
	
INSERT INTO mycl.students( email_id, date_of_join, date_of_birth, name)
	VALUES ( 'mayank@gmail.com', '2010-06-22', '2000-06-22', 'mayank');
		
INSERT INTO mycl.students( email_id, date_of_join, date_of_birth, name)
	VALUES ( 'narayan@gmail.com', '2010-06-22', '2000-06-22', 'narayan');
	
INSERT INTO mycl.students( email_id, date_of_join, date_of_birth, name)
	VALUES ('sheetal@gmail.com', '2007-06-22', '1997-06-22', 'sheetal');

INSERT INTO mycl.students( email_id, date_of_join, date_of_birth, name)
	VALUES ( 'rinku@gmail.com', '2010-06-22', '2000-06-22', 'rinku');
	
INSERT INTO mycl.students( email_id, date_of_join, date_of_birth, name)
	VALUES ('mukesh@gmail.com', '2007-06-22', '1997-06-22', 'mukesh');

INSERT INTO mycl.students( email_id, date_of_join, date_of_birth, name)
	VALUES ( 'raj@gmail.com', '2010-06-22', '2000-06-22', 'raj');
	
INSERT INTO mycl.students( email_id, date_of_join, date_of_birth, name)
	VALUES ('ratan@gmail.com', '2007-06-22', '1997-06-22', 'ratan');

INSERT INTO mycl.students( email_id, date_of_join, date_of_birth, name)
	VALUES ( 'shashi@gmail.com', '2010-06-22', '2000-06-22', 'shashi');
	
INSERT INTO mycl.students( email_id, date_of_join, date_of_birth, name)
	VALUES ('suraj@gmail.com', '2007-06-22', '1997-06-22', 'suraj');


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

INSERT INTO mycl.stud_classes(
	student_id, class_id, mandatory)
	VALUES (1, 3, False);
	
INSERT INTO mycl.stud_classes(
	student_id, class_id, mandatory)
	VALUES (1, 4, True);

INSERT INTO mycl.stud_classes(
	student_id, class_id, mandatory)
	VALUES (1, 5, True);

INSERT INTO mycl.stud_classes(
	student_id, class_id, mandatory)
	VALUES (1, 6, False);
	
INSERT INTO mycl.stud_classes(
	student_id, class_id, mandatory)
	VALUES (2, 3, True);

-- schedule table
INSERT INTO mycl.schedule( class_id, start_time, end_time, day_of_week)
	VALUES ( 1, '12:00', '13:00', 1);

INSERT INTO mycl.schedule( class_id, start_time, end_time, day_of_week)
	VALUES ( 1, '12:00', '13:00', 0);
	
INSERT INTO mycl.schedule( class_id, start_time, end_time, day_of_week)
	VALUES ( 2, '13:00', '14:00', 0);

INSERT INTO mycl.schedule( class_id, start_time, end_time, day_of_week)
	VALUES ( 1, '12:00', '13:00', 2);

INSERT INTO mycl.schedule( class_id, start_time, end_time, day_of_week)
	VALUES ( 1, '12:00', '13:00', 3);
	
INSERT INTO mycl.schedule( class_id, start_time, end_time, day_of_week)
	VALUES ( 2, '13:00', '14:00', 4);

INSERT INTO mycl.schedule( class_id, start_time, end_time, day_of_week)
	VALUES ( 1, '12:00', '13:00', 5);

INSERT INTO mycl.schedule( class_id, start_time, end_time, day_of_week)
	VALUES ( 1, '12:00', '13:00', 6);
	
INSERT INTO mycl.schedule( class_id, start_time, end_time, day_of_week)
	VALUES ( 2, '13:00', '14:00', 2);

INSERT INTO mycl.schedule( class_id, start_time, end_time, day_of_week)
	VALUES ( 2, '13:00', '14:00', 3);

INSERT INTO mycl.schedule( class_id, start_time, end_time, day_of_week)
	VALUES ( 2, '13:00', '14:00', 5);

INSERT INTO mycl.users( password, last_login, name, teacher_id, student_id)
	VALUES ( 'asdfa3r', '2011-01-01 00:00:00'::TIMESTAMP WITH TIME ZONE, 'Arun', null, null);
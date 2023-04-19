-- This script was generated by the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS mycl.students
(
    student_id numeric,
    email_id text,
    date_of_join date,
    date_of_birth date,
    created_by numeric,
    created_on timestamp without time zone,
    modified_by numeric,
    modified_on timestamp without time zone,
    PRIMARY KEY (student_id)
);

CREATE TABLE IF NOT EXISTS mycl.stud_classes
(
    student_id numeric,
    class_id numeric,
    mandatory boolean,
    created_by numeric,
    created_on time without time zone,
    modified_by numeric,
    modified_on time without time zone,
    PRIMARY KEY (student_id, class_id)
);

CREATE TABLE IF NOT EXISTS mycl.classes
(
    class_id numeric,
    building_name text,
    room_no text,
    subject_id numeric,
    created_by numeric,
    created_on time without time zone,
    modified_by numeric,
    modified_on time without time zone,
    PRIMARY KEY (class_id, subject_id)
);

CREATE TABLE IF NOT EXISTS mycl.teacher
(
    teacher_id numeric,
    email_id text,
    date_of_join date,
    date_of_birth date,
    created_by numeric,
    created_on time without time zone,
    modified_on time with time zone,
    modified_by numeric,
    PRIMARY KEY (teacher_id)
);

CREATE TABLE IF NOT EXISTS mycl.teacher_classes
(
    teacher_id numeric,
    class_id numeric,
    created_by numeric,
    created_on time without time zone,
    modified_by numeric,
    modified_on time without time zone,
    PRIMARY KEY (teacher_id, class_id)
);

CREATE TABLE IF NOT EXISTS mycl.schedule
(
    class_id numeric,
    start_time time without time zone,
    end_time timestamp with time zone,
    created_by numeric,
    created_on time without time zone,
    modified_by numeric,
    modified_on time without time zone,
    day_of_week integer,
    PRIMARY KEY (class_id, day_of_week)
);

CREATE TABLE IF NOT EXISTS mycl.subjects
(
    subject_id numeric,
    name text,
    type date,
    created_by numeric,
    created_on time without time zone,
    modified_on time with time zone,
    modified_by numeric,
    PRIMARY KEY (subject_id)
);

ALTER TABLE IF EXISTS mycl.stud_classes
    ADD FOREIGN KEY (student_id)
    REFERENCES mycl.students (student_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS mycl.classes
    ADD FOREIGN KEY (class_id)
    REFERENCES mycl.stud_classes (class_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS mycl.classes
    ADD FOREIGN KEY (class_id)
    REFERENCES mycl.schedule (class_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS mycl.teacher
    ADD FOREIGN KEY (teacher_id)
    REFERENCES mycl.teacher_classes (teacher_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS mycl.teacher_classes
    ADD FOREIGN KEY (class_id)
    REFERENCES mycl.classes (class_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS mycl.subjects
    ADD FOREIGN KEY (subject_id)
    REFERENCES mycl.classes (subject_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;
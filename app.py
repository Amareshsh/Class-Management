from calendar import weekday
import datetime
from flask import Flask, flash, render_template, request, url_for, redirect

import os
import psycopg2

query = "select sch.start_time,sub.name from "\
        "mycl.schedule sch "\
        "INNER JOIN mycl.classes cla "\
        "on cla.class_id = sch.class_id "\
        "INNER JOIN mycl.subjects sub "\
        "on sub.subject_id = cla.subject_id"

app = Flask(__name__)

def get_connection():
    conn = psycopg2.connect(
           host="localhost",
           database="db_college",
           port = "5432",
           user="postgres",
           password="1234") 
    return conn


@app.route("/")
def home():
    conn = get_connection()
    cur = conn.cursor()
    cur.execute( query)
    subjects = cur.fetchall()
    cur.close()
    conn.close()
    return render_template('index.html', utc_dt= datetime.datetime.utcnow(),subjects = subjects)

@app.route('/students')
def students():
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT * FROM mycl.students")
    students = cur.fetchall()
    cur.close()
    conn.close()
    return render_template('students.html',students = students)

@app.route('/teachers')
def teachers():
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT * FROM mycl.teacher")
    teachers = cur.fetchall()
    cur.close()
    conn.close()
    return render_template('teachers.html',teachers = teachers)


@app.route('/login', methods=['GET', 'POST'])
def login():
    error = None
    if request.method == 'POST':
        conn = get_connection()
        cur = conn.cursor()
        cur.execute("select usr.user_id,usr.teacher_id,usr.student_id "\
                    "from mycl.users usr "\
                    "where  usr.password = '"+ str(request.form['password']) +"' "\
                    "and    usr.name = '"+ str(request.form['username']) +"'")
        count = cur.rowcount
        cur.close()
        conn.close()
        if count == 1:
            return redirect(url_for('home'))
    return render_template('login.html', error=error)

@app.route('/addStudents',methods=['GET', 'POST'])
def addStudents():
    error = None
    if request.method == 'POST':
        try:
            conn = get_connection()
            cur = conn.cursor()
            cur.execute( " INSERT INTO mycl.students( email_id, date_of_join, date_of_birth, name)"\
	                     " VALUES ( '" + str(request.form['email_id']) +"', '"+ str(request.form['doj']) + "', '"+ str(request.form['dob']) + "', '"+ str(request.form['name']) + "');")
            count = cur.rowcount
            conn.commit()
            cur.close()
            conn.close()
        except:
            error = 'Enter proper values'
            cur.close()
            conn.close()

        if error == None:
            return redirect(url_for('addStudents'))
    return render_template('addStudents.html', error=error)

@app.route('/addTeachers',methods=['GET', 'POST'])
def addTeachers():
    error = None
    if request.method == 'POST':
        try:
            conn = get_connection()
            cur = conn.cursor()
            cur.execute( " INSERT INTO mycl.teacher( email_id, date_of_join, date_of_birth, name)"\
	                     " VALUES ( '" + str(request.form['email_id']) +"', '"+ str(request.form['doj']) + "', '"+ str(request.form['dob']) + "', '"+ str(request.form['name']) + "');")
            count = cur.rowcount
            conn.commit()
            cur.close()
            conn.close()
        except:
            error = 'Enter proper values'
            cur.close()
            conn.close()

        if error == None:
            return redirect(url_for('addTeachers'))
    return render_template('addTeachers.html', error=error)

@app.route('/sAssignClass',methods=['GET', 'POST'])
def sAssignClass():
    error = None
    if request.method == 'POST':
        try:
            conn = get_connection()
            cur = conn.cursor()
            cur.execute( "INSERT INTO mycl.stud_classes(student_id, class_id, mandatory) "\
	                     "VALUES ("+ str(request.form['student_id']) +", "+ str(request.form['class_id']) +", True);")
            conn.commit()
            cur.close()
            conn.close()
        except:
            error = 'Enter proper values'
            cur.close()
            conn.close()

        if error == None:
            return redirect(url_for('sAssignClass'))
    return render_template('sAssignClass.html', error=error)

@app.route('/tAssignClass',methods=['GET', 'POST'])
def tAssignClass():
    error = None
    if request.method == 'POST':
        try:
            conn = get_connection()
            cur = conn.cursor()
            cur.execute( "INSERT INTO mycl.teacher_classes(teacher_id, class_id) "\
	                     "VALUES ("+str(request.form['teacher_id']) +", "+str(request.form['class_id'])+");")
            conn.commit()
            cur.close()
            conn.close()
        except:
            error = 'Enter proper values'
            cur.close()
            conn.close()

        if error == None:
            return redirect(url_for('tAssignClass'))
    return render_template('tAssignClass.html', error=error)
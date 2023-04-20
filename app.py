from calendar import weekday
import datetime
from flask import Flask, render_template, request, url_for, redirect

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
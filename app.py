from flask import Flask, render_template, request, url_for, redirect

import os
import psycopg2

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
    cur.execute("SELECT * FROM mycl.students")
    rows = cur.fetchall()
    cur.close()
    conn.close()
    return str(rows)
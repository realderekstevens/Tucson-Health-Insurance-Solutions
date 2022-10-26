import sqlite3
from typing import List
import datetime
from model import Todo

conn = sqlite3.connect('db.db')
c = conn.cursor()

def create_table():
	c.execute("""CREATE TABLE IF NOT EXISTS tasks (
		name text,
		category text,
		date_added text,
		date_completed text,
		status integer,
		position integer
		)""")

create_table()

def insert_task(task: Task):
    c.execute('select count(*) FROM tasks')
    count = c.fetchone()[0]
    task.position = count if count else 0
    with conn:
        c.execute('INSERT INTO tasks VALUES (:name, :category, :date_added, :date_completed, :status, :position)',
        {'name': name.task, 'category': task.category, 'date_added': task.date_added,
         'date_completed': task.date_completed, 'status': task.status, 'position': task.position })
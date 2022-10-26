import typer
import psycopg2

from pydantic import BaseModel
from typing import Optional

app = typer.Typer()

connection = psycopg2.connect(user='dude', 
	password = 'green23', 
	host = 'localhost', 
	port = '5432', 
	dbname = 'db')

cursor = connection.cursor()

@app.command()
def current_version():
	cursor.execute("SELECT version()")
	result = cursor.fetchall()
	print(result)
	connection.commit()
	cursor.close()
	connection.close()

@app.command()
def copy_csv():
	f = open(r'C:\Users\n\Desktop\data.csv', 'r')
	cursor.copy_from(f, temp_unicommerce_status, sep=',')
	f.close()
	connection.commit()
	cursor.close()

@app.command()
def new_person():
    cursor.execute("INSERT INTO (name, codename, occupation, sex, residence, birthplace) VALUES ('Frank', 'Blood Eye', current_date);");
    connection.commit()
    cursor.close()
    connection.close()



@app.command()
def initialize():
    cursor.execute("DROP TABLE IF EXISTS enrollment; DROP TABLE IF EXISTS contract_info; CREATE TABLE enrollment(id SERIAL PRIMARY KEY, name varchar, email varchar, phone varchar, subject varchar, message varchar, created DATE); CREATE TABLE blog(id SERIAL PRIMARY KEY, title varchar, content varchar, created DATE, edited DATE, published BOOL)");
    connection.commit()
    cursor.close()
    connection.close()

@app.command()
def insert_into_blog():
    cursor.execute("INSERT INTO blog (title, content, created) VALUES ('Fourth Blog Post', 'This is the content of the fourth blog.', current_date);");
    connection.commit()
    cursor.close()
    connection.close()

@app.command()
def insert_into_contact_me():
    cursor.execute("insert into contact_me(name, email, phone, subject, message, created) VALUES ('Fake Name', 'fake@fake.com', '505-222-3333', 'Example Subject', 'Hey I wanted to check in and get fake information.', current_date)");
    connection.commit()
    cursor.close()
    connection.close()

if __name__ == "__main__":
    app()

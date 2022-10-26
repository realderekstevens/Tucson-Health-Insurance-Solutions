
import sqlite3
#import click

from fastapi import FastAPI, Form, Request

from flask import Flask, render_template, request
from flask_wtf import FlaskForm
from flask_migrate import Migrate
from fastapi.templating import Jinja2Templates
from typing import Optional

from wtforms.widgets import TextArea
from wtforms import Form, BooleanField, StringField, SubmitField, validators
from wtforms.validators import DataRequired
import time
from datetime import datetime, date

# What time is it?
now = datetime.now()
sql_time_format = now.strftime("%Y-%m-%d %H:%M:%S")
check_same_day_format = now.strftime("%Y-%m-%d")

app = Flask(__name__)
application = app
app.config['SECRET_KEY'] = "super secret"

templates = Jinja2Templates(directory="templates/")


@app.route('/')
def index():
    return render_template("index.html")

@app.route('/medicare')
def medicare():
    return render_template("medicare.html")

@app.route('/news')
def news():
    return render_template("news.html")

@app.route('/about')
def about():
    return render_template("about.html")

# @app.route('/blog')
# def blog():
#     return render_template("blog.html")


@app.route('/schedule')
def schedule():
    return render_template("schedule.html")

# @app.get('/contact')
# def contact(request: Request):
#     result = "Typer a number"
#     return templates.TemplateResponse('contact.html', context={'request': request, 'result': result})

# @app.post('/contact')
# def contact(request: Request, num: int = Form(...)):
#     return templates.TemplateResponse('contact.html', context={'request': request, 'result': result})

@app.route('/stocks/10/18/1929')
@app.route('/stocks/10_18_1929')
def october_18_1929():
    return render_template("10_18_1929.html")

@app.route('/stocks/10/21/1929')
@app.route('/stocks/10_21_1929')
def october_21_1929():
    return render_template("10_21_1929.html")

@app.route('/stocks/10/22/1929')
@app.route('/stocks/10_22_1929')
def october_22_1929():
    return render_template("10_22_1929.html")

@app.route('/stocks/10/23/1929')
@app.route('/stocks/10_23_1929')
def october_23_1929():
    return render_template("10_23_1929.html")

@app.route('/stocks/10/24/1929')
@app.route('/stocks/10_24_1929')
def october_24_1929():
    return render_template("10_24_1929.html")

@app.route('/stocks/10/25/1929')
@app.route('/stocks/10_25_1929')
def october_25_1929():
    return render_template("10_25_1929.html")

@app.route('/stocks/10/27/1929')
@app.route('/stocks/10_27_1929')
def october_27_1929():
    return render_template("10_27_1929.html")

@app.route('/stocks/10/28/1929')
@app.route('/stocks/10_28_1929')
def october_28_1929():
    conn = sqlite3.connect('db.sqlite3')
    cursor = conn.cursor()
    headings = ("Stock", "Volume", "High", "Low", "Close", "PreviousClose")
    day_quotes = cursor.execute('''SELECT * FROM OCT_28_1929_NYX ORDER BY Stock ASC''')
    return render_template("10_28_1929.html", day_quotes = day_quotes, headings = headings)
    conn.close()


@app.route('/stocks/10/29/1929')
@app.route('/stocks/10_29_1929')
@app.route('/stocks/black_tuesday')
def black_tuesday():
    return render_template("black_tuesday.html")

@app.route('/stocks/10/30/1929')
@app.route('/stocks/10_30_1929')
def october_30_1929():
    return render_template("10_30_1929.html")

@app.route('/stocks/10/31/1929')
@app.route('/stocks/10_31_1929')
def october_31_1929():
    return render_template("10_31_1929.html")

@app.route('/stocks/11/04/1929')
@app.route('/stocks/11_04_1929')
@app.route('/stocks/11/4/1929')
@app.route('/stocks/11_4_1929')
def november_04_1929():
    return render_template("11_04_1929.html")

@app.route('/stocks/11/06/1929')
@app.route('/stocks/11_06_1929')
@app.route('/stocks/11/6/1929')
@app.route('/stocks/11_6_1929')
def november_06_1929():
    return render_template("11_06_1929.html")

@app.route('/stocks/11/07/1929')
@app.route('/stocks/11_07_1929')
@app.route('/stocks/11/7/1929')
@app.route('/stocks/11_7_1929')
def november_07_1929():
    return render_template("11_07_1929.html")

@app.route('/stocks/11/08/1929')
@app.route('/stocks/11_08_1929')
@app.route('/stocks/11/8/1929')
@app.route('/stocks/11_8_1929')
def november_08_1929():
    return render_template("11_08_1929.html")

@app.route('/stocks/nasdaq_traded')
def stocks_nasdaq_traded():
    headings = ("Ticker", "Company Name", "Listing Exchange")
    conn = sqlite3.connect('db.sqlite3')
    cursor = conn.cursor()
    cursor.execute('''SELECT Symbol, SecurityName, ListingExchange from nasdaq_traded ORDER BY symbol ASC''')
    result = cursor.fetchall();
    print("User Requested: All Nasdaq Traded")
    return render_template("nasdaq_traded.html", headings=headings, result=result)
    conn.close()

@app.errorhandler(404)
def page_not_found(e):
    return render_template("404.html"), 404

@app.errorhandler(500)
def page_not_found(e):
    return render_template("500.html"), 500

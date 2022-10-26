from urllib.request import Request, urlopen
from bs4 import BeautifulSoup
from datetime import datetime
import sqlite3
import requests
import time
import random

headings = ("Ticker")
conn = sqlite3.connect('db.sqlite3')
cursor = conn.cursor()
cursor.execute('''SELECT Symbol field from nasdaq_traded ORDER BY Symbol DESC''')
blah = cursor.fetchall();
print(str(blah))
with open('readme.txt', 'w', encoding='utf-8') as f:
    f.write(str(blah))

for Ticker in ticker_symbol:
    while True:
        try:
            url = 'https://finviz.com/quote.ashx?t=' + str(ticker_symbol)
            webpage = urlopen(Request(url , headers={'User-Agent': 'Mozilla/5.0'})).read()
            soup = BeautifulSoup(webpage, "html.parser")
            stock_price_filter = 'snapshot-td2-cp'
        except:
            print("ERROR ERROR ERROR ERROR!")
        break
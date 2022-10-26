from urllib.request import Request, urlopen
from bs4 import BeautifulSoup
import sqlite3
import requests

def data_entry():
	url = 'https://finance.yahoo.com/lookup'
	webpage = urlopen(Request(url , headers={'User-Agent': 'Mozilla/5.0'})).read()
	soup = BeautifulSoup(webpage, "html.parser")
	print(soup)

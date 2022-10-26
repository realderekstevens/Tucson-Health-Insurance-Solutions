import typer
from rich.console import Console
from rich.table import Table
from typing import List, Optional
from database import Field, Relationship, Session, SQLModel, create_engine

#from model import Task, Enrollment_Info, Contract_Info
#from database import get_all_enrollment_info, delete_enrollment_info, insert_enrollment_info, add_task, delete_task, complete_task, update_task


console = Console()

app = typer.Typer()

#@app.command(short_help='adds a task')

#@app.command(short_help='deletes a task')

#@app.command(short_help='update a task')

#@app.command(short_help='show all tasks')

#@app.command(short_help='import a .csv file')

#@app.command(short_help='delete all .csv file imports')

#@app.command(short_help='update all * values in enrollment data to zero')
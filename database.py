from sqlmodel import SQLModel, create_engine

SQLITE_FILE_NAME = "db.db"
SQLITE_URL = f"sqlite:///{SQLITE_FILE_NAME}"

ENGINE = create_engine(SQLITE_URL, echo=True)

def create_db_and_tables():
	SQLModel.metadata.create_all(ENGINE)
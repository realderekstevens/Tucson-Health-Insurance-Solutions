import sqlite3
import random

def create_table_characters():
	sql = (
		"CREATE TABLE IF NOT EXISTS character ("
		"id INTEGER PRIMARY KEY, "
		"name text, "
		"codename text, "
		"occupation text, "
		"age text, "
		"sex text, "
		"residence text, "
		"birthplace text)"
		)
	sqlite3.connect('database.db').cursor().execute(sql)

def create_table_stats():
	sql = (
		"CREATE TABLE IF NOT EXISTS stats ("
		"id INTEGER PRIMARY KEY, "
		"character_id INTEGER, "
		"strength text, "
		"constitution text, "
		"size text, "
		"dexterity text, "
		"appearance text, "
		"intelligence text, "
		"willpower text, "
		"education text, "
		"movement_rate text, "
		"hp text, "
		"mp text, "
		"FOREIGN KEY (character_id) REFERENCES character (id))"
		)
	sqlite3.connect('database.db').cursor().execute(sql)

def roll_three_dice_then_multiply_by_five():
	first_roll = random.randint(1,6)
	second_roll = random.randint(1,6)
	third_roll = random.randint(1,6)
	rolls_added_together = (first_roll + second_roll + third_roll) * 5

		
def character_creation():
	strength = 10
	sql = ("INSERT INTO stats (strength) VALUES (?)", (strength))
	sqlite3.connect('database.db').cursor().execute(sql)

def roll_strength():
	return roll_three_dice_then_multiply_by_five()

def roll_constitution():
	return roll_three_dice_then_multiply_by_five()

def roll_size():
	return roll_three_dice_then_multiply_by_five()

def roll_dexterity():
	return roll_three_dice_then_multiply_by_five()

def roll_intelligence():
	return roll_three_dice_then_multiply_by_five()

def roll_education():
	return roll_three_dice_then_multiply_by_five()

def roll_movement_rate():
	return roll_three_dice_then_multiply_by_five()

def roll_luck():
	return roll_three_dice_then_multiply_by_five()

def roll_hp():
	return roll_three_dice_then_multiply_by_five()

def roll_mp():
	return roll_three_dice_then_multiply_by_five()



roll_strength()
roll_constitution()
roll_size()
roll_dexterity()
roll_intelligence()
roll_education()
roll_movement_rate()
roll_luck()
roll_hp()
roll_mp()

create_table_characters()
create_table_stats()
character_creation()
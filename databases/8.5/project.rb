require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("teams.db")
db.results_as_hash = true


def create_team (db, name)
	
	db.execute("INSERT INTO ? (player_name) VALUES (?)",[@team_name, name])
end

p "Enter team name"
	@team_name = gets.chomp!

create_table_cmd = <<-SQL 
CREATE TABLE IF NOT EXISTS #{@team_name}(
	id INTEGER PRIMARY KEY,
	player_name VARCHAR(255),
)
SQL

db.execute(create_table_cmd)

11.times do 
		create_team(db, Faker::Name.name)
	end

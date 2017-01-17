require 'sqlite3'
require 'faker'

# Create instance of database
@db = SQLite3::Database.new("teams.db")
@db.results_as_hash = true

@table_array=[]



# Method to create player team
def create_player_team
	# User inputs team name
	p "Enter team name"
	@team_name = gets.chomp!
	# Table creation SQL command
	create_table_cmd = %(
	CREATE TABLE IF NOT EXISTS #{@team_name}(
		id INTEGER PRIMARY KEY,
		player_name VARCHAR(255)
	)
	)

	# Execute create table command
	@db.execute(create_table_cmd)
end

# Method to create a player inside the given team
def fill_team_with_players (team, player)
	@db.execute("INSERT INTO #{team} (player_name) VALUES (?)",[player])
end

# Method to add 11 random players inside the team 
def add_random_players
11.times do 
		fill_team_with_players(@team_name, Faker::Name.name)
	end
end

def create_league
	10.times do 
		random_team_name = Faker::Name.name.split(" ").last
		random_team_name.gsub(/[A-Za-z]/,'').concat("FC")
		@table_array.push ( random_team_name )
		create_table_cmd = %Q(CREATE TABLE IF NOT EXISTS #{random_team_name}(
			id INTEGER PRIMARY KEY,
			player_name VARCHAR(255)
		)
		)
		# Execute create table command
		@db.execute(create_table_cmd)
	end
end

# Clear all teams in the database
def clear_teams
	@table_array.each do |each_table_name|
		@db.execute("DROP TABLE IF EXISTS " + each_table_name)
	end
end

# def view_team_players(team_name)

# end
create_player_team
add_random_players
create_league

# Ask user if teams need to be cleared
#def delete_league
	p "clear teams y/n"
	opt = gets.chomp!
	if opt == "y"
		File.delete("teams.db")
	end
#end



require 'sqlite3'
require 'faker'

# Create instance of database
@db = SQLite3::Database.new("teams.db")
# @db.results_as_hash = true

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
		player_name VARCHAR(255),
		player_number INT,
		FOREIGN KEY (player_number) REFERENCES player_position(id)
	);
	)

	# Execute create table command
	@db.execute(create_table_cmd)
end

# Method to create a player inside the given team
def fill_team_with_players (team, player, shirt_number)
	@db.execute("INSERT INTO #{team} (player_name, player_number) VALUES (?,?)",[player, shirt_number])
end

# Method to add 11 random players inside the team 
def add_random_players
	player_number_array = [1,2,3,4,5,6,7,8,9,10,11].shuffle
	p player_number_array
	player_number_array.each do |each_number|
			fill_team_with_players(@team_name, Faker::Name.name, each_number)
		end
end

def create_league
	10.times do 
		random_team_name = Faker::Name.name.split(" ").last.gsub(/[^A-Za-z]/,'').concat("FC")
		@table_array.push ( random_team_name )
		create_table_cmd = %Q(CREATE TABLE IF NOT EXISTS #{random_team_name}(
			id INTEGER PRIMARY KEY,
			player_name VARCHAR(255),
			player_number INT,
			FOREIGN KEY (player_number) REFERENCES player_position(id)
			);
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


# Ask user if teams need to be cleared
def delete_league
	#p "clear teams y/n"
	#opt = gets.chomp!
	#if opt == "y"
		File.delete('teams.db')
	#end
end

def view_team_names
	view_table_command = %Q(SELECT name FROM sqlite_master
            WHERE type='table'
            ORDER BY name;)
	view_table = @db.execute(view_table_command)
	puts
	p "TEAM NAMES :"
	view_table.each do |each_team|
		p each_team[0]
	end
end

def view_team_players(team_name)
	puts
	p "#{team_name.upcase}'s players are :"
	select_array = @db.execute("SELECT * FROM " + team_name)
	select_array.each do |player_name|
		p player_name
	end
end

p "Welcome to the Fantasy League"
create_player_team
add_random_players
create_league
view_team_players(@team_name)
view_team_names
delete_league


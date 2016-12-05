require_relative 'game_ruby.rb'

describe WordGame do 
	it "gets a word and splits it into an array" do
		wordgame=WordGame.new
		expect(wordgame.get_word("abc")).to eq ["_","_","_"]
	end

	it "gets an alphabet from user and checks if alphabet is present in input word " do
		wordgame=WordGame.new
		expect(wordgame.play_game('a')).to eq []
	end
end


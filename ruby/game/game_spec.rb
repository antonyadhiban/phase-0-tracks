require_relative 'game_ruby.rb'

describe WordGame do 
	it "gets a word and splits it into an array" do
		wordgame=WordGame.new
		expect(wordgame.get_word("abc")).to eq ["_","_","_"]
	end
end
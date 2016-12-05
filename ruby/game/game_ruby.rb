class WordGame
  
  attr_accessor :no_of_guesses
  
  def get_word(word)
    @word=word
    @answer_array=@word.split('')
    no_of_guesses=(@answer_array.length*1.3).round
    @hidden_answer=[]
    @answer_array.length.times do 
    	@hidden_answer.push('_') end
    	puts @hidden_answer
    puts "Player2, You get #{no_of_guesses} guesses"
  end

  def play_game(player_choice)
    @player_choice=player_choice
    for i in @answer_array do
      if i==@player_choice 
        @hidden_answer[@answer_array.index(@player_choice)]=@player_choice
      end
    end
  end

end

puts "Player1, Enter the word"
word=gets.chomp!
wordgame=WordGame.new 
wordgame.get_word(word)


wordgame.play_game('w')
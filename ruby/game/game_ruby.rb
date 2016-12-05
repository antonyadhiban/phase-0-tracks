class WordGame
  
  attr_reader :word,:no_of_guesses,:answer_array,:hidden_answer
  
  def get_word(word)
    @word=word
    @answer_array=@word.split('')
    @no_of_guesses=(@answer_array.length*1.3).round
    @hidden_answer=[]
    @answer_array.length.times do 
      @hidden_answer.push('_') end
      @hidden_answer.each do |x| print x+" " end
      puts
    puts "Player2, You get #{no_of_guesses} guesses"
  end

  def play_game(player_choice)
    @player_choice=player_choice
      for item in @answer_array do
        if item == @player_choice 
          @hidden_answer[@answer_array.index(@player_choice)]=@player_choice
          @answer_array[@answer_array.index(@player_choice)]="-"
        break if item==@player_choice
        end
      end
    @hidden_answer.each do |x| print x+" " end
    puts
  end

end

puts "Player1, Enter the word"
word=gets.chomp!
wordgame=WordGame.new 
wordgame.get_word(word)

count=wordgame.no_of_guesses

until count<0 do
  puts "Enter an alphabet"
  letter=gets.chomp!
  wordgame.play_game(letter)
  count-=1
  break if wordgame.word==wordgame.hidden_answer.join('')
end

if wordgame.word==wordgame.hidden_answer.join('') 
  puts "You have won"
else
  puts "Loooooser"
end
  
  

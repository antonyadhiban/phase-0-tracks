class WordGame
  
  def self.get_word(word)
    @word=word
    answer_array=@word.split('')
    no_of_guesses=(answer_array.length*1.3).round
  end

end


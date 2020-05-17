require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def punctuation
    [".", "?", "!"].include? self 
  end 


  def count_sentences
    count = self.chars.reduce({letters: 0, sentences: 0}) do |count, character|
      if character.punctuation && count[:letters] > 1
        count[:sentences] += 1
        count[:letters] = 0
      else 
        count[:letters] += 1
      end 
      count 
    end 
    count[:sentences]
  end
end

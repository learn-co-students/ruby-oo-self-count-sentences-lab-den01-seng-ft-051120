require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
     self.end_with?('!')
  end

  def count_sentences
    sentence_array =self.split(/[.?!]/)
    sentence_array.delete_if{|sentence| sentence.empty?}
    # binding.pry
    sentence_array.size
  end
end
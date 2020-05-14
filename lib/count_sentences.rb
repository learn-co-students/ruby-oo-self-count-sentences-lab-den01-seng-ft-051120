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
    result = self.split(/\.|\?|\!/)
    result.delete_if {|s| s.size < 1}.size
  end
end
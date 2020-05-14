require 'pry'

class String

  def sentence?
    self.end_with? "."
  end

  def question?
    self.end_with? "?"
  end

  def exclamation?
    self.end_with? "!"
  end

  def count_sentences
    split_sentences = self.split(/[|.|!|?]/)
    scrubbed_sentences = split_sentences.delete_if { |sentence| sentence == ""}
    scrubbed_sentences.length
  end
end
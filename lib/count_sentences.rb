class String
  def sentence?
    end_with?('.')
  end

  def question?
    end_with?('?')
  end

  def exclamation?
    end_with?('!')
  end

  def count_sentences
    sentence = split(' ')
    sentence.reduce(0) do |sentence_count, word|
      if word.sentence? || word.question? || word.exclamation?
        sentence_count += 1
      end
      sentence_count
    end
  end
end

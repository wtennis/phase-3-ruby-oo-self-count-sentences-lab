require 'pry'

class String

  def sentence?
    self[-1] == '.'
  end

  def question?
    self[-1] == '?'
  end

  def exclamation?
    self[-1] == '!'
  end

  def count_sentences
    # puts 'count_sentences called'
    self.split(/[!?.]/).reject(&:empty?).length
  end

  # def count_sentences
  #   puts 'count_sentences called'
  #   delimiters = ['.', '!', '?']
  #   self.split(Regexp.union(delimiters)).length
  # end
end



'This, well, is a sentence.. This is too!! And so is this, I think? Woo...'.count_sentences
# require './lib/count_sentences.rb'
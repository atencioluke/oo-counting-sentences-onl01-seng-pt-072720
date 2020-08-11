require 'pry'

class String

  def sentence?
    self.match?(/\.$/)
  end

  def question?
    self.match?(/\?$/)
  end

  def exclamation?
    self.match?(/\!$/)
  end

  def count_sentences
    self.split(/\.|\?|\!/).delete_if {|s| s.size < 2}.count
  end
end
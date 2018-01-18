include Enumerable

# 文字N-Gram
def char_ngram(n, str)
  str.scan(/\w+/).inject(Set.new) do |grams, word|
    grams.merge(each_n_char(n, word))
  end
end

# 単語をn-gramに分割
def each_n_char(n, word)
  return enum_for(__method__, n, word) unless block_given?

  if word.length <= n
    return yield(word)
  end

  0.upto word.length-n do |i|
    yield(word[i, n])
  end
end

# 単語n-gram
def word_ngram(n, str)
  return enum_for(__method__, n, str) unless block_given?

  words = str.scan(/\w+/)
  if words.length <= n
    return yield words.join(" ")
  end

  0.upto words.length-n do |i|
    yield(words[i, n].join(" "))
  end
end

class P06
  attr_reader :bigram_x, :bigram_y
  def initialize(word_x, word_y)
    @bigram_x = char_ngram(2, word_x)
    @bigram_y = char_ngram(2, word_y)
  end

  def union
    @bigram_x.union(@bigram_y)
  end

  def intersection
    @bigram_x.intersection @bigram_y
  end

  def difference
    @bigram_x.difference @bigram_y
  end

  def x_include?(gram)
    @bigram_x.include?(gram)
  end

  def y_include?(gram)
    @bigram_y.include?(gram)
  end
end

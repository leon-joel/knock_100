include Enumerable

def p05_char
  char_bigram("I am an NLPer")
end
def p05_word
  word_bigram("I am an NLPer")
end



# 文字N-Gram
def char_ngram(n, str)
  str.scan(/\w+/).inject(Set.new) do |grams, word|
    each_n_char(n, word) do |g|
      grams.add(g)
    end
    grams
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
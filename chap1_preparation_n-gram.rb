include Enumerable

def p05_char
  char_bigram("I am an NLPer")
end
def p05_word
  word_bigram("I am an NLPer")
end



# 文字N-Gram
def char_ngram(n, str)
  str.scan(/\w+/).inject([]) do |a, s|
    a.concat(split_n_char(n, s))
  end
end
def split_n_char(n, word)
  return enum_for(__method__, n, word) unless block_given?

  if word.length <= n
    yield(word)
  end

  ary = []
  0.upto word.length-n do |i|
    ary << word[i, n]
  end
  ary
end
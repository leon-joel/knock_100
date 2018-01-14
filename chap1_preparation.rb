def p01
  "stressed".reverse
end
def p02
  str1 = "パトカー"
  str2 = "タクシーる"

  # [str1, str2].map(&:chars).transpose.join
  str1.chars.zip(str2.chars).inject(+"") do |j, (s1, s2)|
    j + s1 + s2
  end
end

def p03
  str = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
  str.scan(/\w+/).map { |s| s.length}
end

def p04
  str = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
  str.scan(/\w+/).map.with_index.inject({}) do |h, (s, i)|
    sub =
        case i+1
        when 1, 5, 6, 7, 8, 9, 15, 16, 19
          s[0]
        else
          s[0, 2]
        end
    h[sub] = i+1
    h
  end
end

def p05_char
  char_bigram("I am an NLPer")
end
def p05_word
  word_bigram("I am an NLPer")
end
def char_bigram(str)

end

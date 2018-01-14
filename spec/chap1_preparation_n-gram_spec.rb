require_relative '../chap1_preparation_n-gram'

describe '第1章: 準備運動' do
  describe "05. n-gram" do
    it 'split_n_char' do
      expect(split_n_char(1, "1")).to eq ["1"]
      expect(split_n_char(1, "AB")).to eq ["A", "B"]
      expect(split_n_char(1, "XYZ")).to eq ["X", "Y", "Z"]
      expect(split_n_char(1, "あいうえ")).to eq ["あ", "い", "う", "え"]
      expect(split_n_char(2, "1")).to eq ["1"]
      expect(split_n_char(2, "AB")).to eq ["AB"]
      expect(split_n_char(2, "XYZ")).to eq ["XY", "YZ"]
      expect(split_n_char(2, "あいうえ")).to eq ["あい", "いう", "うえ"]
      expect(split_n_char(3, "1")).to eq ["1"]
      expect(split_n_char(3, "AB")).to eq ["AB"]
      expect(split_n_char(3, "XYZ")).to eq ["XYZ"]
      expect(split_n_char(3, "あいうえ")).to eq ["あいう", "いうえ"]
    end

    it "char_ngram" do
      expect(char_ngram(1, "I am an NLPer")).to eq ["I", "am", "an", "NL", "LP", "Pe", "er"]
      expect(char_ngram(2, "I am an NLPer")).to eq ["I", "am", "an", "NL", "LP", "Pe", "er"]
    end
  end
end


require_relative '../chap1-05_n-gram'

describe '第1章: 準備運動' do
  describe "05. n-gram" do
    it 'each_n_char' do
      expect(each_n_char(1, "1").to_a).to eq ["1"]
      expect(each_n_char(1, "1").to_a).to eq ["1"]
      expect(each_n_char(1, "AB").to_a).to eq ["A", "B"]
      expect(each_n_char(1, "XYZ").to_a).to eq ["X", "Y", "Z"]
      expect(each_n_char(1, "あいうえ").to_a).to eq ["あ", "い", "う", "え"]
      expect(each_n_char(2, "1").to_a).to eq ["1"]
      expect(each_n_char(2, "AB").to_a).to eq ["AB"]
      expect(each_n_char(2, "XYZ").to_a).to eq ["XY", "YZ"]
      expect(each_n_char(2, "あいうえ").to_a).to eq ["あい", "いう", "うえ"]
      expect(each_n_char(3, "1").to_a).to eq ["1"]
      expect(each_n_char(3, "AB").to_a).to eq ["AB"]
      expect(each_n_char(3, "XYZ").to_a).to eq ["XYZ"]
      expect(each_n_char(3, "あいうえ").to_a).to eq ["あいう", "いうえ"]
    end

    it "char_ngram" do
      expect(char_ngram(1, "I am an NLPer").to_a.sort).to eq ["I", "a", "m", "n", "N", "L", "P", "e", "r"].sort
      expect(char_ngram(2, "I am an NLPer").to_a.sort).to eq ["I", "am", "an", "NL", "LP", "Pe", "er"].sort
    end
  end
end


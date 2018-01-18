require_relative '../chap1-05-06_n-gram'

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
      expect(char_ngram(1, "I am an NLPer").sort).to eq %w(I a m n N L P e r).sort
      expect(char_ngram(2, "I am an NLPer").sort).to eq ["I", "am", "an", "NL", "LP", "Pe", "er"].sort
      expect(char_ngram(6, "I am an NLPer").sort).to eq ["I", "am", "an", "NLPer"].sort
    end

    it "word_ngram" do
      expect(word_ngram(1, "I am an NLPer").sort).to eq %w(I am an NLPer).sort
      expect(word_ngram(2, "I am an NLPer").sort).to eq ["I am", "am an", "an NLPer"].sort
      expect(word_ngram(5, "I am an NLPer").sort).to eq ["I am an NLPer"].sort
    end
  end

  describe "06. 集合" do
    let(:p06) { P06.new("paraparaparadise", "paragraph") }

    it "char_ngram X and Y" do
      expect(p06.bigram_x.sort).to eq ["pa", "ar", "ra", "ap", "ad", "di", "is", "se"].sort
      expect(p06.bigram_y.sort).to eq ["pa", "ar", "ra", "ag", "gr", "ap", "ph"].sort
    end

    it "union/intersection/difference" do
      expect(p06.union.sort).to eq ["ad", "ag", "ap", "ar", "di", "gr", "is", "pa", "ph", "ra", "se"].sort
      expect(p06.intersection.sort).to eq ["ap", "ar", "pa", "ra"].sort
      expect(p06.difference.sort).to eq ["ad", "di", "is", "se"].sort
    end

    it "include?" do
      expect(p06.x_include?("se")).to be_truthy
      expect(p06.y_include?("se")).to be_falsey
    end
  end
end

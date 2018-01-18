require_relative "../chap1"

describe '第1章: 準備運動' do
  it '00. 文字列の逆襲' do
    expect(p01).to eq "desserts"
  end
  it "01. 「パタトクカシーー」" do
    expect(p02).to eq 'パタトクカシーー'
  end
  it "03. 円周率" do
    expect(p03).to eq [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7, 9]
  end
  it '04. 元素記号' do
    expect(p04).to eq({"Al" => 13,
                       "Ar" => 18,
                       "B" => 5,
                       "Be" => 4,
                       "C" => 6,
                       "Ca" => 20,
                       "Cl" => 17,
                       "F" => 9,
                       "H" => 1,
                       "He" => 2,
                       "K" => 19,
                       "Li" => 3,
                       "Mi" => 12,
                       "N" => 7,
                       "Na" => 11,
                       "Ne" => 10,
                       "O" => 8,
                       "P" => 15,
                       "S" => 16,
                       "Si" => 14,
                      })
  end
  it "07. テンプレートによる文生成" do
    expect(p07(12, "気温", 22.4)).to eq "12時の気温は22.4"
  end
  it "08. 暗号文" do
    expect("a".ord).to eq 97
    expect(97.chr).to eq "a"
    expect(cipher("a")).to eq "z"
    expect(cipher("z")).to eq "a"
    expect(cipher("AaBbCcXxYyZz")).to eq "AzByCxXcYbZa"
    expect(cipher("The quick brown fox jumps over the lazy dog")).to eq "Tsv jfrxp yildm ulc qfnkh levi gsv ozab wlt"
    expect(cipher("")).to eq ""
  end
end

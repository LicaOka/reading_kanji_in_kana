require "spec_helper"

RSpec.describe ReadingKanjiInKana do
  it "initializes option values by nil" do
    test = ReadingKanjiInKana::Kanji.new
    expect(test.opt).to eq(nil)
  end

  it "returns nil when nothing is set in option" do
    test = ReadingKanjiInKana::Kanji.new
    expect(test.to_yomi).to eq(nil)
  end

  it "returns one yomigana (reading in kanji with katakana) when kanji is set" do
    test = ReadingKanjiInKana::Kanji.new
    expect(test.to_yomi('漢字')).to eq("カンジ")
  end

  it "returns 5 yomiganas when opt '-N 5' is set " do
    test = ReadingKanjiInKana::Kanji.new('-N 5')
    expect(test.to_yomi('漢字')).to eq("カンジ,カン,ジ,アザ,アザナ")
  end

  it "returns yomigana when opt '-d' is set " do
    test = ReadingKanjiInKana::Kanji.new('-d /usr/local/lib/mecab/dic/mecab-ipadic-neologd')
    expect(test.to_yomi('漢字')).to eq("カンジ")
  end

  it "returns 5 yomiganas when opt '-N 5 -d' is set " do
    test = ReadingKanjiInKana::Kanji.new('-N 5 -d /usr/local/lib/mecab/dic/mecab-ipadic-neologd')
    expect(test.to_yomi('仮名')).to eq("カメイ,カナ,カリ,ナ,メイ")
  end
end

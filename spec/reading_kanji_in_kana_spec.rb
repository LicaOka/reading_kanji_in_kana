require "spec_helper"

RSpec.describe ReadingKanjiInKana do
  it "initializes instance values" do
    test = ReadingKanjiInKana::Kanji.new
    expect(test.kanji).to eq('')
    expect(test.opt).to eq('')
  end

  it "returns nil when nothing is set" do
    test = ReadingKanjiInKana::Kanji.new
    expect(test.kanji_to_yomi).to eq(nil)
  end

  it "returns yomigana (reading in kanji with katakana) when kanji is set" do
    test = ReadingKanjiInKana::Kanji.new
    test.kanji = '漢字'
    expect(test.kanji_to_yomi).to eq(["カンジ"])
  end

  it "returns 5 yomiganas when opt '-N 5' is set " do
    test = ReadingKanjiInKana::Kanji.new
    test.kanji = '漢字'
    test.opt = '-N 5'
    expect(test.kanji_to_yomi).to eq(["カンジ", "カン", "ジ", "アザ", "アザナ"])
  end

  it "returns yomigana when opt '-d' is set " do
    test = ReadingKanjiInKana::Kanji.new
    test.kanji = '漢字'
    test.opt = '-d /usr/local/lib/mecab/dic/mecab-ipadic-neologd'
    expect(test.kanji_to_yomi).to eq(["カンジ"])
  end

  it "returns 5 yomiganas when opt '-N 5 -d' is set " do
    test = ReadingKanjiInKana::Kanji.new
    test.kanji = '仮名'
    test.opt = '-N 5 -d /usr/local/lib/mecab/dic/mecab-ipadic-neologd'
    expect(test.kanji_to_yomi).to eq(["カメイ", "カナ", "カリ", "ナ", "メイ"])
  end
end

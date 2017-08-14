require "reading_kanji_in_kana/version"

require "natto"

module ReadingKanjiInKana
  class Kanji
    attr_accessor :kanji, :opt

    def initialize
      @kanji = ''
      @opt = ''
    end

    def kanji_to_yomi
      if kanji == ''
        p 'ReadingKanjiInKana::Kanji::kanji_to_yomi error: the input string is null. please input `kanji` string.'
        return nil
      end

      text = kanji.dup

      if opt == ''
        nm = Natto::MeCab.new
      else
        nm = Natto::MeCab.new(opt)
      end

      str_ary = []

      nm.parse(text) do |n|
        str = n.feature.split(',')[7]
        str_ary.push("#{str}") unless str.match(/\*/)
      end

      str_ary.uniq!

      str_ary
    end
  end
end

require "reading_kanji_in_kana/version"

require "natto"

module ReadingKanjiInKana
  class Kanji
    attr_accessor :opt

    def initialize(option=nil)
      if option == nil || option == ''
      else
        @opt = option.dup
      end
    end

    def to_yomi(kanji=nil)
      if kanji == nil || kanji == ''
        p 'ReadingKanjiInKana::Kanji::kanji_to_yomi error: the input string is null. please input `kanji` string.'
        return nil
      end

      text = kanji.dup

      if opt == nil || opt == ''
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
      yomi = str_ary.join(',')
      yomi
    end
  end
end
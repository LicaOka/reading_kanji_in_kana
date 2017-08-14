# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "reading_kanji_in_kana/version"

Gem::Specification.new do |spec|
  spec.name          = "reading_kanji_in_kana"
  spec.version       = ReadingKanjiInKana::VERSION
  spec.authors       = ["LicaOka"]
  spec.email         = ["lica.oka@gmail.com"]

  spec.summary       = "A gem returning 'Yomigana' (reading Japanese kanji in kana) by using a gem 'natto' "
  spec.description   = "This gem returns 'Yomigana' (reading Japanese kanji in kana) using a gem 'natto'. You need to install 'MeCab' before using this gem. To install MeCab, please consult 'http://taku910.github.io/mecab/'. "
  spec.homepage      = "https://github.com/LicaOka/reading_kanji_in_kana"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "natto", "~> 1.1.1"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end

# ReadingKanjiInKana

## A gem returning 'Yomigana' (reading Japanese kanji in kana) by using a gem 'natto'
This gem returns 'Yomigana' (reading Japanese kanji in kana).
This is a wrapper of the gem 'natto'.

You need to install 'MeCab' before using. 

To install MeCab, please consult 'http://taku910.github.io/mecab/'


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'reading_kanji_in_kana'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install reading_kanji_in_kana

## Usage

```ruby
test = ReadingKanjiInKana::Kanji.new
test.kanji = '仮名' # => '仮名'
test.opt = '-N 5 -d /usr/local/lib/mecab/dic/mecab-ipadic-neologd'  # => '-N 5 -d /usr/local/lib/mecab/dic/mecab-ipadic-neologd'
ary = test.kanji_to_yomi # => ["カメイ", "カナ", "カリ", "ナ", "メイ"]  :output 5-Best yomigana as an array because of option
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/LicaOka/reading_kanji_in_kana. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ReadingKanjiInKana project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/reading_kanji_in_kana/blob/master/CODE_OF_CONDUCT.md).

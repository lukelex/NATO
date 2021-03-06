# NATO

[![Code Climate](https://codeclimate.com/github/lukelex/NATO.png)](https://codeclimate.com/github/lukelex/NATO)

The NATO phonetic alphabet, more accurately known as the International
Radiotelephony Spelling Alphabet, is the most widely used spelling
alphabet. NATO assigns code words acrophonically to the letters of the
English alphabet so that critical combinations of letters and numbers
can be pronounced and understood by those who transmit and receive
voice messages by radio or telephone regardless of their native
language or the presence of transmission static.

The 26 code words and 10 numbers in the NATO phonetic alphabet are assigned to their respectives in the English alphabet in alphabetical order as follows:

* Alfa
* Bravo
* Charlie
* Delta
* Echo
* Foxtrot
* Golf
* Hotel
* India
* Juliett
* Kilo
* Lima
* Mike
* November
* Oscar
* Papa
* Quebec
* Romeo
* Sierra
* Tango
* Uniform
* Victor
* Whiskey
* X-ray
* Yankee
* Zulu
* One
* Two
* Three
* Four
* Five
* Six
* Seven
* Eight
* Nine
* Zero

## Installation

Add this line to your application's Gemfile:

```ruby
gem "NATO"
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install NATO
```

## Usage

```ruby
require "NATO"

text = NATO::Text.new "a8h43lnr0"
text.to_nato # "Alfa Eight Hotel Four Three Lima November Romeo Zero"
text.pronunciation #'AL-FAH AIT HOH-TEL FOW-ER TREE LEE-MAH NO-VEM-BER ROW-ME-OH ZEE-RO'
```

Or, if you rather use refinements:
```ruby
require "NATO/refined"

module YourApp
  using NATO::Refined

  "a8h43lnr0".to_nato # "Alfa Eight Hotel Four Three Lima November Romeo Zero"
end
```

### Text-to-speach

You can also use the text-to-speech system tool:
```ruby
require "NATO"

NATO::Text.new("bzt").say # pipes out to "say" on mac or "espeak" on linux
```

### CLI

```bash
$ gem install NATO
$ nato --convert "bctz" # Bravo Charlie Tango Zulu
$ nato --say "bctz" # uses system text-to-speech tool
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

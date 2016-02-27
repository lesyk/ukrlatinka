# European-Ukrainian Latynka

Convert ukrainian chars to latin chars

![Alt ukrainian_latin](http://www.omniglot.com/images/writing/ukrainian_latin.gif)

[Wiki Ukrainian-Latin alphabet](http://en.wikipedia.org/wiki/Ukrainian_Latin_alphabet)
## Installation

Add this line to your application's Gemfile:

    gem 'ukrlatynka'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ukrlatynka

## Usage

    class AnyKlass
      include Ukrlatynka
    end

    klass = AnyKlass.new

    uk_text = 'Текст українською мовою'
    klass.convert uk_text, :uk_lat  # => "Tekst ukrajinśkoü movoü"

    lat_text = 'Тekst ukrajinśkoü movoü'
    klass.convert lat_text, :lat_uk  # => "Текст українською мовою"

    klass.latinka? lat_text  # => true

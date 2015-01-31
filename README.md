# Ukrlatinka

Convert ukrainian chars to latin chars

## Installation

Add this line to your application's Gemfile:

    gem 'ukrlatinka'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ukrlatinka

## Usage

    class AnyKlass
      include Ukrlatinka
    end

    klass = AnyKlass.new

    uk_text = 'Текст українською мовою'
    klass.convert uk_text, :uk_lat  # => "Tekst ukrajinśkoü movoü"

    lat_text = 'Тekst ukrajinśkoü movoü'
    klass.convert lat_text, :lat_uk  # => "Текст українською мовою"

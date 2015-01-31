require './test/test_helper.rb'

class UkLat
  include Ukrlatinka
end

describe UkLat do
  before do
    @uklat = UkLat.new
  end

  it 'covert example text UK to LAT' do
    uk = 'Цей текст українською мовою який я хочу конвертувати в латиницю'
    lat = 'Cej tekst ukrajinśkoü movoü äkyj ä xoču konvertuvaty v latynycü'
    result = @uklat.convert uk, :uk_lat
    result.must_equal lat
  end

  it 'covert example text LAT to UK' do
    lat = 'Тekst ukrajinśkoü movoü'
    uk = 'Текст українською мовою'
    result = @uklat.convert lat, :lat_uk
    result.must_equal uk
  end
end

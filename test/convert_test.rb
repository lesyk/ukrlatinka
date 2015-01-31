require './test/test_helper.rb'

class UkLat
  include Ukrlatinka
end

describe UkLat do
  before do
    @uklat = UkLat.new
  end

  it 'covert example text UK to LAT' do
    uk = "Фабрикуймо гідність, лящім їжею, ґав хапаймо, з'єднавці чаш!"
    lat = "Fabrykujmo hіdnіst', läşіm jižeü, gav xapajmo, z'ëdnavcі čaš!"
    result = @uklat.convert uk, :uk_lat
    result.must_equal lat
  end

  it 'covert example text LAT to UK' do
    lat = "Fabrykujmo hіdnіst', läşіm jižeü, gav xapajmo, z'ëdnavcі čaš!"
    uk = "Фабрикуймо гідність, лящім їжею, ґав хапаймо, з'єднавці чаш!"
    result = @uklat.convert lat, :lat_uk
    result.must_equal uk
  end
end

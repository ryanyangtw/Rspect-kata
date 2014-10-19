require_relative '../../lib/leap_year'


describe "LeapYear" do
  
  describe "#is_leap_year" do
    example{
      expect(is_leap_year?(4)).to eq true
    }

    example{
      expect(is_leap_year?(100)).to eq false
    }

    example{
      expect(is_leap_year?(400)).to eq true
    }

    example{
      expect(is_leap_year?(1900)).to eq false
    }

    example{
      expect(is_leap_year?(2000)).to eq true
    }

  end

end



  #example {
  #  expect( is_leap_year?(400) ).to eq true
  #}
#
  #example {
  #  expect( is_leap_year?(1900) ).to eq false
  #}
#
  #example {
  #  expect( is_leap_year?(2000) ).to eq true
  #}
class FortunesController < ApplicationController
  def horoscopes
    @sign = params.fetch("the_sign")

    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(@sign.to_sym)
    @horoscope = this_zodiac.fetch(:horoscope)
    
    @array_of_numbers = Zodiac.lucky_numbers

    render({ :template => "fortune_templates/horoscope_page" })
  end
end

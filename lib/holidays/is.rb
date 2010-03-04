# coding: utf-8
module Holidays
  # This file is generated by the Ruby Holiday gem.
  #
  # Definitions loaded: data/is.yaml
  #
  # To use the definitions in this file, load them right after you load the 
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'holidays/is'
  #
  # More definitions are available at http://code.dunae.ca/holidays.
  module IS # :nodoc:
    DEFINED_REGIONS = [:is]

    HOLIDAYS_BY_MONTH = {
      5 => [{:mday => 1, :name => "Verkalýðsdagurinn", :regions => [:is]},
            {:mday => 13, :name => "Mæðradagurinn", :regions => [:is]}],
      0 => [{:function => lambda { |year| Holidays.easter(year)-48 }, :function_id => "easter(year)-48", :name => "Bolludagur", :regions => [:is]},
            {:function => lambda { |year| Holidays.easter(year)-47 }, :function_id => "easter(year)-47", :name => "Sprengidagur", :regions => [:is]},
            {:function => lambda { |year| Holidays.easter(year)-46 }, :function_id => "easter(year)-46", :name => "Öskudagur", :regions => [:is]},
            {:function => lambda { |year| Holidays.easter(year)-7 }, :function_id => "easter(year)-7", :name => "Pálmasunnudagur", :regions => [:is]},
            {:function => lambda { |year| Holidays.easter(year)-3 }, :function_id => "easter(year)-3", :name => "Skírdagur", :regions => [:is]},
            {:function => lambda { |year| Holidays.easter(year)-2 }, :function_id => "easter(year)-2", :name => "Föstudaginn langi", :regions => [:is]},
            {:function => lambda { |year| Holidays.easter(year) }, :function_id => "easter(year)", :name => "Páskadagur", :regions => [:is]},
            {:function => lambda { |year| Holidays.easter(year)+1 }, :function_id => "easter(year)+1", :name => "Annar í páskum", :regions => [:is]},
            {:function => lambda { |year| Holidays.easter(year)+39 }, :function_id => "easter(year)+39", :name => "Uppstigningardagur", :regions => [:is]},
            {:function => lambda { |year| Holidays.easter(year)+49 }, :function_id => "easter(year)+49", :name => "Hvítasunnudagur", :regions => [:is]},
            {:function => lambda { |year| Holidays.easter(year)+50 }, :function_id => "easter(year)+50", :name => "Annar í hvítasunnu", :regions => [:is]}],
      11 => [{:mday => 16, :name => "Dagur íslenskrar tungu", :regions => [:is]}],
      6 => [{:mday => 3, :type => :informal, :name => "Sjómannadagurinn", :regions => [:is]},
            {:mday => 17, :name => "Lýðveldisdagurinn", :regions => [:is]}],
      1 => [{:mday => 1, :name => "Nýársdagur", :regions => [:is]},
            {:mday => 6, :name => "Þrettándinn", :regions => [:is]},
            {:mday => 19, :type => :informal, :name => "Bóndadagur", :regions => [:is]}],
      12 => [{:mday => 24, :name => "Jól", :regions => [:is]},
            {:mday => 25, :name => "Jól", :regions => [:is]},
            {:mday => 26, :name => "Jól", :regions => [:is]},
            {:mday => 31, :name => "Gamlárskvöld", :regions => [:is]}],
      2 => [{:mday => 18, :type => :informal, :name => "Konudagur", :regions => [:is]}],
      8 => [{:wday => 1, :week => 1, :name => "Frídagur verslunarmanna", :regions => [:is]}],
      4 => [{:function => lambda { |year| Holidays.is_sumardagurinn_fyrsti(year) }, :function_id => "is_sumardagurinn_fyrsti(year)", :name => "Sumardagurinn fyrsti", :regions => [:is]}]
    }
  end

# Iceland: first day of summer (Thursday after 18 April)
def self.is_sumardagurinn_fyrsti(year)
  date = Date.civil(year,4,18)
  if date.wday < 4
    date += (4 - date.wday)
  else date
    date += (11 - date.wday)
  end
  date
end



end

Holidays.merge_defs(Holidays::IS::DEFINED_REGIONS, Holidays::IS::HOLIDAYS_BY_MONTH)

# coding: utf-8
module Holidays
  # This file is generated by the Ruby Holiday gem.
  #
  # Definitions loaded: data/pt.yaml
  #
  # To use the definitions in this file, load them right after you load the 
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'holidays/pt'
  #
  # More definitions are available at http://code.dunae.ca/holidays.
  module PT # :nodoc:
    DEFINED_REGIONS = [:pt]

    HOLIDAYS_BY_MONTH = {
      5 => [{:mday => 1, :name => "Dia do Trabalhador", :regions => [:pt]}],
      0 => [{:function => lambda { |year| Holidays.easter(year)-47 }, :function_id => "easter(year)-47", :type => :informal, :name => "Carnaval", :regions => [:pt]},
            {:function => lambda { |year| Holidays.easter(year)-2 }, :function_id => "easter(year)-2", :name => "Sexta-feira Santa", :regions => [:pt]},
            {:function => lambda { |year| Holidays.easter(year) }, :function_id => "easter(year)", :name => "Páscoa", :regions => [:pt]},
            {:function => lambda { |year| Holidays.easter(year)+60 }, :function_id => "easter(year)+60", :name => "Corpo de Deus", :regions => [:pt]}],
      11 => [{:mday => 1, :name => "Todos os Santos", :regions => [:pt]}],
      6 => [{:mday => 10, :name => "Dia de Portugal", :regions => [:pt]}],
      1 => [{:mday => 1, :name => "Ano Novo", :regions => [:pt]}],
      12 => [{:mday => 1, :name => "Restauração da Independência", :regions => [:pt]},
            {:mday => 8, :name => "Imaculada Conceição", :regions => [:pt]},
            {:mday => 25, :name => "Natal", :regions => [:pt]}],
      8 => [{:mday => 15, :name => "Assunção de Nossa Senhora", :regions => [:pt]}],
      4 => [{:mday => 25, :name => "Dia da Liberdade", :regions => [:pt]}],
      10 => [{:mday => 5, :name => "Implantação da República", :regions => [:pt]}]
    }
  end


end

Holidays.merge_defs(Holidays::PT::DEFINED_REGIONS, Holidays::PT::HOLIDAYS_BY_MONTH)

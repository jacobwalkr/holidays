# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: data/jp.yaml
class JpDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_jp
{Date.civil(2008,1,1) => '元日', 
 Date.civil(2010,1,11) => '成人の日', 
 Date.civil(2008,2,11) => '建国記念日',
 Date.civil(2008,4,29) => '昭和の日',
 Date.civil(2008,5,3) => '憲法記念日',
 Date.civil(2008,5,5) => 'こどもの日',
 Date.civil(2010,7,19) => '海の日',
 Date.civil(2010,9,20) => '敬老の日',
 Date.civil(2010,10,11) => '体育の日',
 Date.civil(2008,11,3) => '文化の日',
 Date.civil(2008,11,23) => '勤労感謝の日',
 Date.civil(2008,12,23) => '天皇誕生日',
 Date.civil(2010,3,22) => '振替休日',
 Date.civil(2008,11,24) => '振替休日',
}.each do |date, name|
   assert_equal name, (Holidays.on(date, :jp, :informal)[0] || {})[:name]
end

# vernal equinox day
[Date.civil(2004,3,20), Date.civil(2005,3,20), Date.civil(2006,3,21),
 Date.civil(2007,3,21), Date.civil(2008,3,20), Date.civil(2009,3,20),
 Date.civil(2010,3,21)].each do |date|
  assert_equal '春分の日', Holidays.on(date, :jp)[0][:name]
end

# national culture day
[Date.civil(2004,9,23), Date.civil(2005,9,23), Date.civil(2006,9,23),
 Date.civil(2007,9,23), Date.civil(2008,9,23), Date.civil(2009,9,23),
 Date.civil(2010,9,23), Date.civil(2011,9,23), Date.civil(2012,9,22),
 Date.civil(2013,9,23)].each do |date|
  assert_equal '秋分の日', Holidays.on(date, :jp)[0][:name]
end

# citizons holiday
[Date.civil(2032,9,21), Date.civil(2049,9,21), Date.civil(2009,9,22),
 Date.civil(2015,9,22), Date.civil(2026,9,22)].each do |date|
  assert_equal '国民の休日', Holidays.on(date, :jp)[0][:name]
end

  end
end

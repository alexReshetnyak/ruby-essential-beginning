today = Time.now

p today.year
p today.month
p today.day
p today.hour
p today.min
p today.sec
puts
p today.yday # * year day
p today.wday # * week day

puts
p '----predicate (boolean) methods---'
bithday = Time.new(1987, 7, 6)
p bithday.monday?
p bithday.thursday?
p bithday.wednesday?
p bithday.thursday?
p bithday.friday?
p bithday.saturday?
p bithday.sunday?

p bithday.dst? # * daylight saving time

puts
p '----add or subtract time---'
start_of_year = Time.new(2016, 1, 1)
p start_of_year
p start_of_year + 60 # * add 60 seconds
p start_of_year - 180

puts
p '----find day of the year---'
def find_day_of_year_by_number(number)
  current_day = Time.new(2016, 1, 1)
  one_day = 60 * 60 * 24

  until current_day.yday == number
    current_day += one_day
  end

  current_day
end

p find_day_of_year_by_number(340)

puts
p '---comparable methods---'
bithday = Time.new(2019, 6, 12)
summer = Time.new(2019, 6, 1)
winter = Time.new(2019, 12, 1)

p bithday <= Time.new(2019, 6, 12) # * true
# result = { a: 0 } == { a: 0 } # * true
# p result

p bithday.between?(summer, winter) # * true

puts
p '---convert time object to other object---'
some_day = Time.new(2000, 2, 15)
p some_day.yday
p some_day.wday
p some_day.mday

p some_day.to_s # * convert to string
p some_day.ctime # * => "Tue Feb 15 00:00:00 2000"
p some_day.to_a # * to array => [0, 0, 0, 15, 2, 2000, 2, 46, false, "FLE Standard Time"]

puts
p '---convert time object to formatted string---'
# %Y - Year with century if provided, will pad result at least 4 digits.
# %C - year / 100 (rounded down such as 20 in 2009)
# %y - year % 100 (00..99)

# %m - Month of the year, zero-padded (01..12)
# %_m blank-padded ( 1..12)
# %-m no-padded (1..12)
# %B - The full month name (``January'')
# %^B uppercased (``JANUARY'')
# %b - The abbreviated month name (``Jan'')
# %^b uppercased (``JAN'')
# %h - Equivalent to %b

# %d - Day of the month, zero-padded (01..31)
# %-d no-padded (1..31)
# %e - Day of the month, blank-padded ( 1..31)

# %j - Day of the year (001..366)

today = Time.now
p today.strftime('%B some text %d')

puts
p '---.parse and .strptime methods---'
require 'time' # * load addition functionality
p Time.parse('2019-01-01') # * returns a time object
# * Say Ruby how to parse a string (time string to parse, how parse)
p Time.strptime('03-04-2000', '%m-%d-%Y')

puts
p '--------seconds to time-----------'
date = Time.strptime('1571733759', '%s').utc
# date = Time.strptime('1571733759', '%s')
p date
p date.year
p date.month
p date.day
p date.hour
p date.min
p date.sec

puts
p '----time to seconds---'
date2 = Time.new(date.year, date.month, date.day)
p date2.to_i
p date2
p date2.year
p date2.month
p date2.day
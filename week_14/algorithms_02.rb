require 'date'

start_date = Time.local(1987, 07, 23)
end_date = Time.local(2018, 02, 25)
sunday_counter = 0

while end_date >= start_date
  if end_date.strftime("%A") == "Sunday" && end_date.strftime("%d") == "01"
    sunday_counter += 1
  end
  end_date -= 86400
end

p sunday_counter

# The reason I chose to use this algorithm was to complete an exercise
# in finding the number of sundays that fall on the first of the month
# from your birthday (start_date) to the present day (end_date).
# I feel this example would have limited use outside of the exercise
# but feel it was worth doing to get a better understanding of built in ruby
# functions such as date / time I also learned how to use strftime (string to time)

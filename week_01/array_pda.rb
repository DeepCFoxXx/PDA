jedis = ["Luke", "Obi Wan", "Asoka", "Kyle"]

def jedi(array)
  for jedis in array
    if jedis.include?("Luke")
      puts "Correct"
    else
      puts "Not Correct"
    end
  end
end

#p jedis
# jedis << 'Yoda'
#
# p jedis
#
# puts jedis.length
#
# puts jedis.sort
#
# p jedis[3]

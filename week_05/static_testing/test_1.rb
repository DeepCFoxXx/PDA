
### Testing task 1 code:

# Carry out static testing on the code below.
# Read through the code.
# Comment any errors you can see without correcting them.


# def func1 val
#   if val = 1 #should be == conditional.
#   return true
#   else
#   return false
#   end
# end
#
# dif max a b #should be def and a/b should be in ().
#   if a > b
#       return a
#   else
#   b
#   end
# end
# end #extra end
#
# def looper
#   for i in 1..10
#   puts i #needs to be return if i > 9
#   end
# end

#undinfed method
# failures = 0
#
# if looper == 10
#   puts "looper passed"
# else
#   puts "looper failed"
#   failures = failures + 1
#no end

#undifined method
if func1(3) == false
  puts "func1(3) passed"
else
  puts "func1(3) failed"
  failures = failures + 1
end
#no end

#undifined method
if max(100,1) == 100
  puts "max(100,1) passed"
else
  puts "func1(3) failed"
  failrues = failures + 1
end
#no end

#undifined method
if failures
  puts "Test Failed"
else
  puts "Test Passed"
end
#no end 

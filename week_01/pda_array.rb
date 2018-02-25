languages = ["Ruby", "Python", "Java", "Javascript"]

def sort(languages)
  languages.sort!{|x, y| x <=> y}
end

p sort(languages)

# def method_name(languages)
#    languages.each {|i| puts i.swapcase}
# end
#
# p method_name(languages)

# p languages
#
# puts languages.length
#
# puts languages.sort
#
# p languages[3]

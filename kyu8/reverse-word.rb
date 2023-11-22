# Complete the function that accepts a string parameter, and reverses each word in the string.
# All spaces in the string should be retained.

# Examples
# "This is an example!" ==> "sihT si na !elpmaxe"
# "double  spaces"      ==> "elbuod  secaps"


#My solution
def reverse_words(str)
  str.include?('  ') ? str.split.map {|palavra| palavra.reverse}.join('  ') : str.split.map {|palavra| palavra.reverse}.join(' ')
end

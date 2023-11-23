

# DESCRIPTION


# Complete the solution so that it strips all text that follows any of a set of comment markers passed in. Any whitespace at the end of the line should also be stripped out.

# Example:

# Given an input string of:

# apples, pears # and bananas
# grapes
# bananas !apples
# The output expected would be:

# apples, pears
# grapes
# bananas
# The code would be called like so:

# result = solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"])
# result should == "apples, pears\ngrapes\nbananas"



# My solution

def solution(input, markers)

  result = []
  input = input.split('')
  remove = false

  input.each_with_index do |char, index|

    next if remove && char != "\n"

    remove = markers.include?(char) ? true : false

    remove ? next : result << char

  end

  result.join.strip.gsub(" \n", "\n")

end

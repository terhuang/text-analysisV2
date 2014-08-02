# This is the base code for v0.1 of our Ruby text analyzer.
# Visit https://github.com/codeunion/text-analysis/wiki to see what to do.

# Method name: item_counts
# Input:   An arbitrary array
#
# Returns: A hash where every item is a key whose value is the number of times
#          that item appears in the array
#
# Prints:  Nothing

# Here are some examples:
#     item_counts(["I", "am", "Sam", "I", "am"])
#       # => {"I" => 2, "am" => 2, "Sam" => 1}
#
#     item_counts([10, 20, 10, 20, 20])
#       # => {10 => 2, 20 => 3}
#
# In short, item_counts(array) tells us how many times each item appears
# in the input array.

def item_counts(array)
  counts = {} # Initialize counts to an empty Hash

  array.each do |item|
    if counts[item] # if item is already a key
      counts[item] = counts[item] + 1 # then add 1 to the count
    else                  # else it just occurs once
      counts[item] = 1 # the value is one
    end
    # Add code here to modify the "counts" hash accordingly
    # You'll need to handle two cases:
    #   1. The first time we've seen a particular item in the array
    #   2. The second-or-later time we've seen a particular item in the array
  end

  puts "the counts for #{array} are ...."
  counts = (counts.sort_by {|key, value| value}).reverse
  counts.each do |key, value|
    puts "#{key} #{value}"
  end
end

# "p" prints something to the screen in a way that's friendlier
# for debugging purposes than print or puts.
item_counts([1,2,1,2,1])
item_counts([1,2,1,2,1]) == {1 => 3, 2 => 2}
item_counts(["a","b","a","b","a","ZZZ"]) == {"a" => 3, "b" => 2, "ZZZ" => 1}
item_counts([]) == {}
item_counts(["hi", "hi", "hi"]) == {"hi" => 3}
item_counts([true, nil, "dinosaur"]) == {true => 1, nil => 1, "dinosaur" => 1}
item_counts(["a","a","A","A"]) == {"a" => 2, "A" => 2}

# Each of the lines above will print out "true" or "false" and collectively
# act as a sanity check.  Remember that conceptually "x == y"
# means "are x and y equal?"
#
# That is, when you run the code, if any lines print out "false"
# then you know something is off in your code.
#
# This does *not* mean that your code is perfect if each line
# prints out "true.""  For example,
#   1. We might have missed a corner case
#   2. The code does what it should, but is conceptually confused
#   3. Something else we haven't though of
#
# Remember: Option #3 is *always* possible.
#
# Think of these like rumble strips on the side of the road.  They're here
# to tell you when you're veering off the road, not to guarantee you're
# driving phenomenally. :)

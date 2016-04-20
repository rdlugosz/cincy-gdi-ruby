# From a tip on https://www.ruby-forum.com/topic/162413
# This allows you to reverse the order used by a call to #sort_by.
#
# For example:
#   my_array.sort_by { |a| [ReverseComparator.new(a.date), a.price] }
#
# This would return my_array sorted by descending date and then ascending
# price for elements which have the same date.

class ReverseComparator
  attr_reader :this

  def initialize(obj)
    @this = obj
  end

  def <=>(other)
    other.this <=> @this
  end
end

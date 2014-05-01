require 'rubygems'
require 'pry-debugger'

module ArrayUtil
  def self.max(array)
    check = array[0]
      for x in array
        if x > check
         check = x
       end
    end
    check
  end

# In class demo:
  # def self.max(array)
#   max_value = array[0]
#     for i in 0..array.length
#       max_value = array[i] if array[i] > max_value
#     end
#     max_value
#   end
  # end

  # Canaan helped by saying to define check as array[0]
  # so that it would look at the first value. Keeping my
  # original method since it was the only thing I had to
  # change, but using the cleaner version.
  #   check = array[0]
  #   if array.length == 0
  #     return nil
  #   else
  #     for x in array
  #       if x > check
  #        check = x
  #      end
  #   end
  #   check
  # end

# In class demo:
#   def self.middle_element(array)
#     return nil if array.length == 0
#     if array.length % 2 == 1
#       return array[array.length/2]
#     else
#       array[array.length/2] + array[array.length/2 - 1] / 2.0
#     end
#   end

  def self.middle_element(array)
    arrayLength = array.length
    x = arrayLength / 2
    if arrayLength == 0
      return nil
    elsif arrayLength % 2 == 0
      return (array[x].to_f + array[x - 1]) / 2
    else
      return array[x]
    end
  end

# In class demo:
#   def self.sum_arrays(array1, array2)
#     sol = []
#       for i in 0...array1.length
#         sol << array1[i] + array2[i]
#       end
#     sol
#   end

  def self.sum_arrays(array1, array2)
    array1 = array1
    array2 = array2
    lengthOne = array1.length
    lengthTwo = array2.length
    total = []
    x = 0
    if lengthOne >= 1 && lengthTwo >= 1
        while x < lengthOne && x < lengthTwo
          total << array1[x] + array2[x]
          x += 1
        end
      return total
    else
      return []
    end
  end
end

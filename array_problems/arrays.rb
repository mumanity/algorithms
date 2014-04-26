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

  def self.sum_arrays(array1, array2)
    a = array1
    b = array2
    c = a.length
    d = b.length
    total = []
    if c > 1 && d > 1
      for x in a
        z = a[x] + b[x]
        total << z
        x +=1
        total
      end
    elsif c == 1 && d == 1
      total = [a.inject { |sum,x| sum + x } + b.inject { |sum,x| sum + x }]
      total
    else
      return []
    end
  end


end

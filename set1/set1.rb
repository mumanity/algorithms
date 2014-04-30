require 'pry-debugger'
module Set1
  # def self.swap_small(array)
  #   smallest = array.min PATRICK IS NOT A FAN OF THIS!!!!
  #   array.delete(smallest)
  #   array.unshift(smallest)
  #   array
  # end


    def self.swap_small(array)
      smallest = array[0]
      first = array.first

      array.each do |x|
        if x < smallest
          smallest = x
        end
      if array[0] == smallest
        array
      else
        array.delete(smallest)
        array.delete(first)
        array.push(first)
        array.unshift(smallest)
      end
        array
      end
    end

  def self.find_sum_2(array, sum = 0)
    if array.length == 0
      false
    end

    array.each do |x|
      array.each do |y|
        if (x + y == sum)
          return true
        end
      end
    end
    false
  end

  def self.find_sum_3(array)
    if array.length == 0
      return false
    end
    if array[0] == 0 && array.length == 1
      return true
    end
    if array.include?(0)
      return true
    end
  end
end


# Swap the smallest number in the array with the first element. Eg. swap_small([5,7,2,9]) # => [2, 7, 5, 9]

# Given an array of numbers and the number x, find out if there are two numbers in the array that add up to x (just return true or false)

# Same problem as above except check if there are 3 numbers in the array that add up to x

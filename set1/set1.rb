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

      if array.length > 1
        for x in array
          if x < smallest
            smallest = x
          else
          end
        end
        array.delete(first)
        array.delete(smallest)
        array.unshift(smallest)
        array.push(first)
      end

      array
    end

  def self.find_sum_2(array, sum = 0)
  end

  def self.find_sum_3(array)
  end
end


# Swap the smallest number in the array with the first element. Eg. swap_small([5,7,2,9]) # => [2, 7, 5, 9]

# Given an array of numbers and the number x, find out if there are two numbers in the array that add up to x (just return true or false)

# Same problem as above except check if there are 3 numbers in the array that add up to x

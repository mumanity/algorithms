require 'pry-debugger'

module Set1

# SOLUTION
  # O(n)
  # def self.swap_small(array)
  #   small_index = 0
  #   small_element = array.first

  #   for i in 0...array.length
  #     small_index = i if array[i] < array[small_index]
  #   end
  #   array[0], array[small_index] = array[small_index], array[0]
  #   array
  # end


# O(n^2)
    def self.swap_small(array)
      smallest = array[0]
      first = array.first

      for x in array
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

# SOLUTION
# O(n^2)
# def self.find_sum_2(array, sum = 0)
#   (0...array.length).each do |i|
#   # for i in 0...array.length --> eq. to above
#     (i...array.length).each do |j|
#       return true if array[i] + array[j] == sum
#     end
#   end
#   false
# end


# O(n^2)
  def self.find_sum_2(array, sum = 0)
    if array.length == 0
      false
    end

    for x in array
      for y in array
        if x + y == sum
          return true
        end
      end
    end
    false
  end

# SOLUTION
# O(n^3)
# def self.find_sum_3(array, sum=0)
#   (0...array.length).each do |i|
#     (i...array.length).each do |j|
#       (j...array.length).each do |k|
#       return true if array[i] + array[j] + array[k] == sum
#       end
#     end
#   end
#   false
# end


O(n^3)
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

    for x in array
      for y in array
        for z in array
          if x + y + z == 0
            return true
          end
        end
      end
    end
    false
  end
end


# Swap the smallest number in the array with the first element. Eg. swap_small([5,7,2,9]) # => [2, 7, 5, 9]

# Given an array of numbers and the number x, find out if there are two numbers in the array that add up to x (just return true or false)

# Same problem as above except check if there are 3 numbers in the array that add up to x

class Fib
  @@cache = {}

# o(n)
  def fib(n)
    return 1 if n <= 1

    a = 1
    b = 1
    counter = 3
    while counter <= n
      a, b = b, a + b
      counter += 1
    end
    b
  end

  def rec_fib(n)
    return 1 if n <= 2

# refactored
O()
    if @@cache[n]
      return @@cache[n]
    else
      left = rec_fib(n - 1)
      right = rec_fib(n - 2)
      @@cache[n - 1] = left
      @@cache[n - 2] = right
    end

    @@cache[n] = left + right
    return @@cache[n]

# original
# O(rec_fib(n))
    # if @@cache[n - 1]
    #   left = @@cache[n - 1]
    # else
    #   left = rec_fib(n - 1)
    #   @@cache[n - 1] = left
    # end

    # if @@cache[n - 2]
    #   right = @@cache[n - 2]
    # else
    #   right = rec_fib(n - 2)
    #   @@cache[n - 2] = right
    # end

    # left + right

  end

end

class Solver
  def factorial(n)
    if n < 0
        return  'StandardError'
    end
    if n.zero?
      1
    else
      n * factorial(n - 1)
    end
  end

  def reverse(word); end

  def fizzbuzz(n); end
end

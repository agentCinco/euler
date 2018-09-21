#euler
#104

z = "123456789"

class Fib
  def fib(n)
    return n if n < 2
    return fib(n - 1) + fib(n - 2)
  end
end

def memoize(className, methodName)
  className.class_eval do
    alias_method("original_memoize_#{methodName}", methodName)

    define_method(methodName) do |*args|
      hash = instance_variable_get("@memoize_#{methodName}_hash")

      if hash.nil?
        hash = Hash.new
        instance_variable_set("@memoize_#{methodName}_hash", hash)
      end

      return hash[args] if hash.has_key?(args)
      res = self.send("original_memoize_#{methodName}", *args)
      hash[args] = res
      return res
    end
  end
end

memoize(Fib, :fib)

a = Fib.new

1.upto 1_000_000 do |i|
  x = a.fib(i).to_s

  if i < 100_000
    next
  end

  if x[0, 9].split(//).sort.join == z and x[-9..-1].split(//).sort.join == z
    puts "WIN #{i}"
  end
end

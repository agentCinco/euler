require 'benchmark'


class Integer
  FibonacciCache = Hash.new do |hash, key|
    if hash.has_key?(key - 1) and hash.has_key?(key - 2)
      hash[key] = hash[key - 1] + hash[key - 2]
    elsif hash.has_key?(key + 1) and hash.has_key?(key + 2)
      hash[key] = hash[key + 2] - hash[key + 1]
    else
      subkey = key.div(2)
      case key.modulo(4)
        when 1
          hash[key] = (2*hash[subkey] + hash[subkey - 1])*(2*hash[subkey] - hash[subkey - 1]) + 2
        when 3
          hash[key] = (2*hash[subkey] + hash[subkey - 1])*(2*hash[subkey] - hash[subkey - 1]) - 2
        else
          hash[key] = hash[subkey] * (hash[subkey] + 2*hash[subkey - 1])
      end
    end
  end
  FibonacciCache[0] = 0
  FibonacciCache[1] = 1

  def fib
    return FibonacciCache[self]
  end

  def fib_uncached
    return FibonacciCache.dup[self]
  end
end

#puts "Doesn't work !" unless (1..10).map { |i| i.fib } == [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]


#--------------------------


# From: http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/37727
# Author: Shin-ichiro HARA


  class QR3
    attr_reader :a, :b

    def inspect
      "{#{@a},#{@b}}"
    end
    alias to_s inspect

    def initialize(a, b)
      @a, @b = a, b
    end

    def *(r)
      u = (@a + @b)*(r.a + r.b)
      v = (@a - @b)*(r.a - r.b)
      QR3.new((u + v)>>1, @b*r.b + ((u - v)>>1))
    end

    def **(n)
      if n == 0
        QR3.new(1, 0)
      elsif n > 0
        z = x = self
        n -= 1
        while (z*= x if n[0].nonzero?; (n >>= 1).nonzero?)
          x *= x
        end
        z
      end
    end
  end

  def fib_qr3(n)
    (QR3.new(0, 1)**n).b
  end


#--------------------------


# See:
# - Tailin' Ruby, http://judofyr.net/posts/tailin-ruby.html & http://github.com/judofyr/recursive/tree/master
# - Re: Ruby and recursion (Ackermann benchmark), http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/145593

class Class
  # Found in [ruby-talk:145593]
  def tailcall_optimize(*methods)
    methods.each do |meth|
      org = instance_method(meth)
      define_method(meth) do |*args|
        if Thread.current[meth]
          throw(:recurse, args)
        else
          Thread.current[meth] = org.bind(self)
          result = catch(:done) do
            loop do
              args = catch(:recurse) do
                throw(:done, Thread.current[meth].call(*args))
              end
            end
          end
          Thread.current[meth] = nil
          result
        end
      end
    end
  end
end
 
class Fib
  def acc(i, n, result)
    if i == -1
      result
    else
      acc(i - 1, n + result, n)
    end
  end
 
  def fib(i)
    acc(i, 1, 0)
  end
end  
 
class RescueFib < Fib
  RunAgain = Class.new(Exception)
  
  def acc(i, n, result)
    if i == -1
      result
    else
      raise RunAgain
    end
  rescue RunAgain
    i, n, result = i - 1, n + result, n
    retry
  end
end
  
class CatchFib < Fib 
  tailcall_optimize :acc
end
 
class RedoFib < Fib
  define_method(:acc) do |i, n, result|
    if i == -1
      result
    else
      i, n, result = i - 1, n + result, n
      redo
    end
  end
end
 
class IterativeFib < Fib
  def acc(i, n, result)
    until i == -1
      i, n, result = i - 1, n + result, n
    end
    result
  end
end


#--------------------------


# Fibonacci numbers with Ruby 1.9 Fibers
# http://www.davidflanagan.com/2007/08/fibonacci-numbers-with-ruby-19-fibers.html

class Generator
  def initialize &block
    @f = Fiber.new &block
  end

  def next?
    @f.alive?
  end

  def next(*args)
    @f.resume(*args)
  end
end

fib2 = Generator.new do 
  x, y = 0, 1
  loop do 
    Fiber.yield y
    x,y = y,x+y
  end
end


#--------------------------


# Re: Fast Fibonacci method
# http://www.ruby-forum.com/topic/67327

class Integer
  def fib_tail_recursive a=1, b=0, p=1, q=0
    if modulo(2).zero?
      if zero?
        b
      else
        p_p = p*p
        div(2).fib_tail_recursive a, b, p_p + 2*p*q, p_p + q*q
      end
    else
      (self - 1).fib_tail_recursive p*(a + b) + a*q, a*p + b*q, p, q
    end
  end

  def fib_iterative
    n, a, b, p, q = self, 1, 0, 1, 0
    while n.nonzero?
      a, b = p*(a + b) + a*q, a*p + b*q if n.modulo(2).nonzero?
      p_p = p*p
      n, p, q = n.div(2), p_p + 2*p*q, p_p + q*q
    end
    b
  end
end


#------------------------------------------------------


num = 1_000_000
num = 10
num = 0
num = 1
num = 200_000
num = 100_000


ret1 = nil
ret2 = nil
ret3 = nil
ret4 = nil
ret5 = nil
ret6 = nil
ret7 = nil


Benchmark.bm(50) do |t| 

   t.report("#{num}.fib: ") do
      ret1 = num.fib
   end 

   t.report("fib_qr3(#{num}): ") do
      ret2 = fib_qr3(num)
   end 

   t.report("RedoFib.new.fib(#{num-1}): ") do
      ret3 = RedoFib.new.fib(num-1)
   end 

   t.report("IterativeFib.new.fib(#{num-1}): ") do
      ret4 = IterativeFib.new.fib(num-1)
   end 

   t.report("Fibers #{num}: fib2.next: ") do
      (num).times { ret5 = fib2.next }
   end 

   t.report("#{num}.fib_tail_recursive: ") do
      ret6 = num.fib_tail_recursive
   end 

   t.report("#{num}.fib_iterative: ") do
      ret7 = num.fib_iterative
   end 

end


puts

if ret1 == ret2 && ret2 == ret3 && ret3 == ret4 && ret4 == ret5 && ret5 == ret6 && ret6 == ret7 then 
   puts "Succeeded: numbers are equal!" 
end

puts

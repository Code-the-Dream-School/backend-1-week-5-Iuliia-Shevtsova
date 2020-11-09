#write your code here
def add(x, y)
    x+y
end

def subtract(x, y)
    x-y
end

# sum ****************

# sum -- 1 way
# def sum(array)
#     array.sum
# end

# sum -- 2 way
def sum(array)
    sum = 0
    array.each{|x| sum += x}
    sum
end


# * `multiply`********

# for two numbers
# def multiply(x, y)
#     x * y
# end
  
# for several numbers
def multiply(array)
    m = 1
    array.each{|x| m *= x}
    m
end

# * `power`
def power(a, x)
    p=1
    x.times do
      p*=a
    end
    p
end

# * `[factorial] *************
# 1 way -- block

# def factorial(x, &block)
#     x < 1? 1 : block.call(x)
# end

# fact = factorial(5) do |x|
#     f=1
#     for i in 1..x do 
#         f*=i
#     end
#     f
# end

# puts fact

# 2 way
def factorial(x)
    if x < 1 
      f =1 
    else 
      f=1
      for i in 1..x do 
        f*=i
      end
    end
    f
end
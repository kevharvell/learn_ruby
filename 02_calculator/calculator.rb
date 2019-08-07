#write your code here
def add num1, num2
    return num1 + num2
end

def subtract num1, num2
    return num1 - num2
end

def sum arr
    sum = 0
    arr.each do |num|
        sum += num
    end
    return sum
end

def multiply arr
    product = 1
    arr.each do |num|
        product *= num
    end
    return product
end

def power num1, num2
    return num1 ** num2
end

def factorial num
    result = 1
    while num > 1 do
        result *= num
        num -= 1
    end
    return result
end
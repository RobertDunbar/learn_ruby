#write your code here
def add num1, num2
    num1 + num2
end

def subtract num1, num2
    num1 - num2
end

def sum array
    result = 0
    array.each do |num|
        result += num
    end
    result
end

def multiply array_num
    result = 1
    array_num.each do |num|
        result *= num
    end

    result
end

def power num, pow
    num ** pow
end

def factorial num
    result = 1
    if (num == 0 || num == 1)
        return result
    end

    num.times do
        result *= num
        num -= 1
    end
    result
end
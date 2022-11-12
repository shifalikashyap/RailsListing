

# sum of first 100 numbers using for loop

sum = 0

# for i in 1..100 do 
#   sum += i
# end

# while i <= 100
#   sum = sum_by_recursion(sum, i)
#   i += 1
# end

sum = 0
i = 1
max_limit = 200

def sum_by_recursion(number, index, max_limit = 100)
  number += index
  index += 1
  if index > max_limit
    return number
  else
    sum_by_recursion(number, index, max_limit)
  end
end
print sum_by_recursion(sum, i, max_limit)



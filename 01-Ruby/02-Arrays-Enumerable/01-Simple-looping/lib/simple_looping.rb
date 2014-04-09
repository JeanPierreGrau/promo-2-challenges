def sum_with_while(min,max)
sum = 0
i = min

while i <= max
  sum += i
  i += 1
end

  return sum
end


def sum_with_for(min,max)
sum = 0

for i in min..max do
  sum += i
end

  return sum
end


def sum_recursive(min,max)

if min = max
  return max
else
  min = sum_recursive(min+1, max)
end

end



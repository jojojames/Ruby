def power(a, n)
  if n == 0
    return 1
  end

  if n == 1
    return a
  end

  x = power(a, n / 2)
  if n % 2 != 0
    return a * (x * x)
  else
    return (x * x)
  end

end


print "What number? > "
aNum = gets.chomp
print "To what power? > "
nPow = gets.chomp

print "#{aNum} to the #{nPow} is #{ power(aNum.to_i, nPow.to_i) }."

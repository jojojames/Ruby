def call_sort(unsortedList)
  print unsortedList
end

def insertion_sort(s)
  n = s.length
  (0..n-1).each do |i|
    j = i
    while (j > 0 and s[j] < s[j - 1])
      s[j], s[j - 1] = s[j - 1], s[j]
      j = j - 1
    end
  end
  return s
end

def selection_sort(s)
  n = s.length
  (0..n-1).each do |i|
    min = i
    (i+1..n-1).each do |j|
      if s[j] < s[min]
        min = j
      end
      s[i], s[min] = s[min], s[i]
    end
  end
  return s
end

ary = [1, 2, 3, 5, 2, 9, 2, 18, 22, 144, 2, 3, 9]
#call_sort(insertion_sort(ary))
#print insertion_sort(ary)
#print selection_sort(ary)


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

print power(2, 20)

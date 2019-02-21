def kangaroo(x1, v1, x2, v2)
  j = 1;

  while  j < 10000 do
    if (x1 + j*v1) == (x2 + j*v2)
      return "YES"
    else
      j += 1
    end
  end
  return "NO"
end

puts kangaroo 0, 3, 4, 2
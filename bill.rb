def bonAppetit(bill, k, b)
  bill.delete_at(k)

  owe = bill.reduce(:+)/2 

  if owe - b == 0
    puts "Bon Appetit"
  else
    puts (b - owe)
  end

end

bill = [3, 10, 2, 9]

bonAppetit bill, 1, 12
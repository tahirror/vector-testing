#Given an array 'a',create a product array where product[i]==product of all elements except a[i]
#Time-complexity: O(n), Space-complexity: O(n),Auxiliary-space: O(1)

def product_array(a)
  len=a.length
  product=Array.new(len,1) # Initilaize product array elements to 1
  temp=1

  #Loop to store product of left elements
  for i in 0...len
    product[i]=temp
    temp*=a[i]
  end

  temp=1 #reset temp variable to 1

  #Loop to multiply stored left products with right products
  for i in (len-1).downto(0)
    product[i]*=temp
    temp*=a[i]
  end

  return product
end

p product_array([1,2,3,4,5,6])  # => [720, 360, 240, 180, 144, 120]


def prod_arr(x)
  len = x.length
  product = Array.new(len,1)

  for i in 0...len
    for j in 0...len
      next if i == j
      product[i] *= x[j]
    end
  end
  return product
end

p prod_arr([1,3,5,7,9,11])
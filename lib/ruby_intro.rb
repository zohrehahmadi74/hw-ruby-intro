# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum_num = 0
  arr_size = arr.size
  if arr.size == 0 #Determine whether there is only one array element
    return 0
  end
  
  arr.each do | i |
    sum_num + = i
  end
  return sum_num  
    
    
    
end

def max_2_sum arr
  # YOUR CODE HERE
  sum_num_2 = 0
  arr_size = arr.size
  if arr_size == 0 #determine whether the array element is empty
    return 0
  end
  if arr_size == 1 #Determine whether the array element is 1
    return arr [0]
  end
 
  arr_sort = arr.sort #sort first, then intercept the largest two numbers
  for i in 1..2
    sum_num_2 + = arr_sort [arr_size-i]
  end
  return sum_num_2
  
  
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  sum_num_n = 0
  arr_size = arr.size
  if arr_size == 0 #determine whether the array element is empty
    return 0
  end
  if arr_size <= n #Determine whether the array elements are not more than n
    arr.each do | i |
      sum_num_n + = i
    end
    return sum_num_n
  end

  arr_sort = arr.sort #sort first, then intercept the largest n number
  for i in 1..n
    sum_num_n + = arr_sort [arr_size-i]
  end
  return sum_num_n
 
  
end

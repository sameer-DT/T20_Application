def find_duplicates(arr)
    frequency = Hash.new(0) 
  
    arr.each do |element|
      frequency[element] += 1 
    end
  
    duplicates = frequency.select { |key, value| value > 1 }
    duplicates
  end
  
  array = [1,2,3,2,4,5,6,5,5,3,9,5,6,2,5,1,]
  puts find_duplicates(array)

  
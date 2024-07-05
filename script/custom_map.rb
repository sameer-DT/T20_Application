def custom_map(array)
    new_array=[]
    array.each do |x|
        new_array << x**2
    end
    return new_array
end
puts custom_map([1,2,3,4,5]){
    |x| x**2
}


  
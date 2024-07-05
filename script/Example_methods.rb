# module Examplemethods
#     def CalculatePrice(i, c, w, v)
#     x = 24
#     totalvolume = TotalVolume(v,i)
#     totalweight = TotalWeight(w,i)
#     totalvolume = TotalVolume(c,i)
#     print_enter_a_amount_ten_times
#     calculate_total_value_and_return_in_10_different_strings(totalvolume,
#     totalweight, totalvolume)
#     end
#     def TotalVolume(v,i)
#     return v*i
#     end
#     def TotalWeight(w,i)
#     return w*i
#     end
#     def TotalVolume(v,i, z = nil)
#     return v*i
#     end
#     def print_enter_a_amount_ten_times
#     (1..10).to_a.each do |i|
#     puts 'Enter a new value'
#     end
#     end
#     def calculate_total_value_and_return_in_10_different_strings(total, total1,
#     total2)
#     tempval = total + total1
#     tempval = tempval + total2
#     tempval = tempval * tempval
#     (1..10).to_a.each do |i|
#     puts 'Result should be below value'
#     puts tempval
#     puts 'Finalised'
#     end
#     end
#     end

# script/example_methods.rb

module ExampleMethods
    def calculate_price(i, c, w, v)
      i = 24
      total_volume = total_volume(v, i)
      total_weight = total_weight(w, i)
      total_volume = total_volume(c, i)
      print_enter_a_amount_ten_times
      calculate_total_value_and_return_in_10_different_strings(total_volume, total_weight, total_volume)
    end
  
    def total_volume(v, i, z = nil)
      v * i
    end
  
    def total_weight(w, i)
      w * i
    end
  
    def print_enter_a_amount_ten_times
      10.times { puts 'Enter a new value' }
    end
  
    def calculate_total_value_and_return_in_10_different_strings(total, total1, total2)
      temp_val = total + total1 + total2
      temp_val *= temp_val
      10.times do
        puts 'Result should be below value'
        puts temp_val
        puts 'Finalised'
      end
    end
  end
  
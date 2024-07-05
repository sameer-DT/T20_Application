factorial = ->(n) { (1..n).reduce(1, :*) }
puts factorial.call(7)

def sort_hash_keys_by_length(hash)
    hash.sort_by { |key, _| key.length }.to_h
  end
hash = {"Apple":100,"Banana":200,"Mango":400,"Pineapple":50,"Watermelon":45,"Papaya":80}
puts sort_hash_keys_by_length(hash)
  
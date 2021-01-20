array = ["polban", "jtk", "pbp", 2021]
array = array.map { |string| "%".concat(string.to_s) }

print(array.join("__"))

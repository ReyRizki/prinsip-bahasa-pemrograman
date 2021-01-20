print "Silahkan masukkan kalimat: "
text = gets.chomp

print "Anda menuliskan: "
puts text

if (text.length == 0)
  puts "> String tidak boleh kosong"
end

if (text =~ /2021/)
  puts "> String mengandung 2021"
end

if (text.split(" ").length > 100)
  puts "> String terdiri dari lebih dari 100 kata"
end


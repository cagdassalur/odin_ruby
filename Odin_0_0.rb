


def caesar_cipher(st, shift)
  st.chars.map do |c|
    dec = c.ord.between?(97, 122) ? 97-shift : c.ord.between?(65, 90) ? 65-shift : 0
    puts dec
    puts c.ord - dec
    (((c.ord - dec) % 26) + dec).chr
  end.join
end

puts caesar_cipher("What a string!", 5)
puts 'a'.ord
puts 'z'.ord
puts 'A'.ord
puts 'Z'.ord
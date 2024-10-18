def caesar_cipher(in_str, r_shift)
  cryptic_bytes = []
  first_dcase_byte = 'a'.bytes.first
  first_ucase_byte = 'A'.bytes.first
  in_str.each_byte do |ch|
    cryptic_ch = case ch
      when (first_dcase_byte...(first_dcase_byte+26)) then (ch-first_dcase_byte+r_shift)%26+first_dcase_byte
      when (first_ucase_byte...(first_ucase_byte+26)) then (ch-first_ucase_byte+r_shift)%26+first_ucase_byte
      else ch
    end

    cryptic_bytes.push(cryptic_ch)
  end
  puts cryptic_bytes.pack("C*")
end

caesar_cipher("Dummy Z String", 4)

def caesar(word)
  keyword = word.split(//)
  alphabet = ("A".."Z").to_a
  index_array = []
  keyword.each {|letter| index_array << alphabet.rindex(letter) }
  index_array


# Got rid of this, and returned the proper thing, which was `index_array'
#
#  25.times do 
#    temp_array = []
#    alphabet.rotate!
#    index_array.each do |position|
#       temp_array << alphabet[position] 
#    end
#    
#    #temp_array
#  end
  
end

keyword_index = caesar("RLCOPY")
p keyword_index.inspect


cipher = "IONDVQY DZH QNTY KLQRY BVISEK TYHME JERWLF; ZHV YEYOAEW RRBEI WEFZE FI HRGTY EYG UNTH.
SS GLC WLR COEGIEY TYDX V EEK KEIK HVDVQ, OT JHIZY TF PI ZUSK VXEGNXH XUGT DHR FNOLOH SKAI;
VIRONX WLNZ DVDXU, G NVFIFYAIB IAJ, WZOP PUMV ZLRT IK ZMYR CFPI."

alphabet = ("A".."Z").to_a
cipher_array = cipher.split(//)
cipher_array.select! {|character| character =~ /\w/ }
cipher_position_array = []
cipher_array.each {|letter| cipher_position_array << alphabet.rindex(letter) }

# this doesn't solve, but it does function
#
# cipher_position_array.map! do |position|
#   if cipher_position_array.index(position) == 0 
#     position = position + keyword_index[0]
# 
#   else
#     position = position + keyword_index.rotate![0]
#   end
# end
# 
# 
# puts cipher_position_array.inspect


# alphabet.each do |letter|
#   letter_index = alphabet.index(letter)
#   shifted_alphabet = alphabet.rotate(letter_index) 
# puts shifted_alphabet.inspect 
#   keyword.each do |keyword_letter|
#     k_index = alphabet.index(keyword_letter)
#     keyword_letter = shifted_alphabet[k_index]
#     #puts keyword.inspect
#   end
# end

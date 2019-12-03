def caesar_cipher(str, num)
	uppercase_alpha = ('A'..'Z').to_a
	downcase_alpha = ('a'..'z').to_a

	cipher = ""

	str.each_char do |char|
		if uppercase_alpha.include?(char) 
			index = uppercase_alpha.index(char) 
			new_index = (index + num) % 26
			cipher << uppercase_alpha[new_index] 
		elsif downcase_alpha.include?(char)
			index = downcase_alpha.index(char)                                  
                        new_index = (index + num) % 26
                        cipher << downcase_alpha[new_index]  
		else
			cipher << char
		end
	end
	cipher
end
			
puts caesar_cipher("What a string!", 5)

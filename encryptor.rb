# Encryptor (Basic)
# Based on Jumpstart Labs concept
#
# 1. Demonstrate how a Hash works
# 1a. Show "template" code that has the alphabet Hash in it already
# 1b. Note that it's something we *could* store in a variable, but chose not to
# 2. Implement #encrypt_letter(letter)
# 2a. Start basic, then add downcase
# 3. Show how to use each_char on a String
# 4. Show how to #push onto an Array
# 5. Implement #encrypt(message)
# 6. Implement #decrypt_letter(letter)
# 7. Implement #decrypt(message)

class Encryptor
  def cipher
    {
      "a"=>"z", "b"=>"y", "c"=>"x", "d"=>"w", "e"=>"v",
      "f"=>"u", "g"=>"t", "h"=>"s", "i"=>"r", "j"=>"q",
      "k"=>"p", "l"=>"o", "m"=>"n", "n"=>"m", "o"=>"l",
      "p"=>"k", "q"=>"j", "r"=>"i", "s"=>"h", "t"=>"g",
      "u"=>"f", "v"=>"e", "w"=>"d", "x"=>"c", "y"=>"b",
      "z"=>"a", " "=>" "
    }
  end

  def encrypt_letter(letter)
    cipher[letter.downcase]
  end

  def encrypt(message)
    results = []
    message.each_char do |char|
      results.push encrypt_letter char
    end
    results.join
  end

  def decrypt(message)
    results = []
    message.each_char do |char|
      results.push decrypt_letter char
    end
    results.join
  end

  def decrypt_letter(letter)
    cipher[letter.downcase]
  end
end

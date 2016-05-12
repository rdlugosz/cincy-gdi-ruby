# Encryptor (Basic)
# Based on Jumpstart Labs concept

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
    message.split("").each do |char|
      results << encrypt_letter(char)
    end
    results.join
  end

  def decrypt_letter(letter)
    cipher[letter.downcase]
  end

  def decrypt(message)
    results = []
    message.split("").each do |char|
      results << decrypt_letter(char)
    end
    results.join
  end

end

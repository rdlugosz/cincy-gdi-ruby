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
    cipher[letter]
  end

  def encrypt(message)
  end
end

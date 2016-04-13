# Encryptor (Smarter)
# Based on Jumpstart Labs concept

# 1.  Demonstrate Array#rotate
# 1a.  Note that a negative rotation is the inverse of a positive rotation
# 2.  Demonstrate Ranges
# 3.  Demonstrate Array#zip
# 4.  Demonstrate Array#to_h
# 5.  Show how we can create arbitrary ciphers via 1-4
# 6.  Refactor #cipher to take rotation as argument
# 7.  Create the hash using the range-rotation-zip approach
# 8.  Refactor the #encrypt and #decrypt methods to take a rotation param
# 9a.  Remember that #decrypt needs to negate the rotation param!
# 10. Show that you can now encrypt with an arbitrary rotation
# 11. Show that you can grab a random key via #rand(42)
# 12. Talk about how you could decrypt someone's message without the key
# 12a. Social Engineering (just ask them for the key)
# 12b. Brute force!


class Encryptor
  def cipher(rotation)
    alphabet = (" ".."z").to_a
    alpha_rotated = alphabet.rotate(rotation)

    alpha_pairs = alphabet.zip(alpha_rotated)

    alpha_pairs.to_h
  end

  def encrypt_letter(letter, rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[letter]
  end

  def encrypt(message, rotation)
    letters = message.split("")
    results = letters.collect do |char|
      encrypt_letter char, rotation
    end
    results.join
  end

  def decrypt(message, rotation)
    letters = message.split("")
    results = letters.collect do |char|
      decrypt_letter char, rotation
    end
    results.join
  end

  def decrypt_letter(letter, rotation)
    cipher_for_rotation = cipher(-rotation)
    cipher_for_rotation[letter]
  end
end

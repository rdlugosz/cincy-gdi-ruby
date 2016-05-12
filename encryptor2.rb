# Encryptor (Smarter)
# Based on Jumpstart Labs concept


# 1.  Demonstrate Ranges
# 2.  Demonstrate Array#to_h
# 3.  Demonstrate ("a".."z").to_a.reverse
# 4.  Demonstrate Array#zip

# 5.  Demonstrate Array#rotate
# 6.  Note that a negative rotation is the inverse of a positive rotation
# 7.  Show how we can create arbitrary ciphers via 1-4
# 8.  Refactor #cipher to take rotation as argument
# 9.  Create the hash using the range-rotation-zip approach
# 10.  Refactor the #encrypt and #decrypt methods to take a rotation param
# 11.  Remember that #decrypt needs to negate the rotation param!
# 12. Show that you can now encrypt with an arbitrary rotation
# 13. Show that you can grab a random key via #rand(42)
# 14. Talk about how you could decrypt someone's message without the key
# 14.a. Social Engineering (just ask them for the key)
# 14.b. Brute force!


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

puts "Encryptor Ready!!"

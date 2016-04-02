class Greeter

  def greet
    student_names = []
    puts "Hi, welcome to Intro to Ruby! What is everyone's name?"

    while name = gets.chomp!
      break if name.empty?
      student_names << name.capitalize
    end

    student_names.each do |student_name|
      puts "Hi #{student_name}, it is #{random_adverb.upcase} to meet you!"
      sleep 1.4
    end

    puts
    puts "Alright everyone. Let's get started."

    sleep 2

    puts "Soon all #{student_names.size} of you will know a little Ruby!"
    puts
  end

  def random_adverb
    ["nice", "great", "wonderful"].shuffle.first
  end
end

Greeter.new.greet

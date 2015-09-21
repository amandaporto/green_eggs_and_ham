class GreenEggsAndHam

  def initialize
    @text = File.read('green_eggs_and_ham.txt')
  end

  def word_count
    file = File.read("green_eggs_and_ham.txt").split(" ").count
  end
end

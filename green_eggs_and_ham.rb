class GreenEggsAndHam

  def initialize
    @text = File.read('green_eggs_and_ham.txt')
    number = 4
  end

  def word_count
    @text.split(" ").count
  end

  def words
    @text.gsub!(/[?.!,]/, " ")
    @text.split(" ")
  end

  def sorted_unique_words
    words.map {|word| word.downcase}.uniq.sort
  end

  def number_of_words_shorter_than(number)
    words.count {|word| word.length < number}
  end
end

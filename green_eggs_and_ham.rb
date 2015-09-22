class GreenEggsAndHam
  attr_accessor :count

  def initialize
    @text = File.read('green_eggs_and_ham.txt')
    number = 4
  end

  def word_count
    @text.split(" ").count
  end

  def words
    @text.gsub(/[?.!,]/, " ").split(" ")
  end

  def sorted_unique_words
    words.map {|word| word.downcase}.uniq.sort
  end

  def number_of_words_shorter_than(number)
    words.count {|word| word.length < number}
  end

  def longest_word
    words.max_by {|word| word.length}
  end

  def frequency_of_unique_words
  frequency = Hash.new(0)
  words.each {|word| frequency[word.downcase] += 1}
  frequency
  # inject
  # each-with-object
  end

  def stanzas
    @text.split(/\n\n/)
  end

  def lines
    @text.gsub(/\n\n/, "\n").split(/\n/)
  end

  def punctuation_count
    @text.split(" ").select {|characters| characters =~ /[?.!,]/}.count  #Why do we need ~ ??
  end

  def most_repeated_line
    lines.max_by {|line| lines.count(line)}
    #end.values.max_by(&:size).first
  end
end

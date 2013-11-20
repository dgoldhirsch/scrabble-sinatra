class Dictionary
  attr_accessor :words

  def to_s
    "#{words}"
  end

  def words_spelled_with(array_of_letters)
    words.select do |word|
      letters_in(word).to_set.subset?(array_of_letters.to_set)
    end
  end

private

  def initialize(words)
    self.words = words.map { |word| normalize(word) }
  end

  def initialize_copy(other)
    self.words = other.words.clone
  end

  def letters_in(string)
    string.split('')
  end

  def normalize(string)
    string.strip.downcase
  end
end

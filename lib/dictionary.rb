class Dictionary
  attr_accessor :words

  def to_s
    "#{words}"
  end

  def words_containing_anagram(anagram)
    words.select do |word|
      Strings::string_contains_anagram?(word, anagram)
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
    string.gsub(/\s+/, "").downcase
  end
end

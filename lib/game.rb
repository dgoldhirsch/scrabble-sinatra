require_relative 'populate_from_hash'
require_relative 'scorer'

class Game

  WORD_PATH = './words.txt'

  include PopulateFromHash

  # Input
  attr_accessor :dictionary
  attr_accessor :scorer
  attr_accessor :string

  # Output
  attr_accessor :words

  def play(string)
    self.string = string
    return if string.empty? # answer is already in words

    self.words = dictionary.words_spelled_with(Strings::letters_in(string))
    puts "PLAY RESULT: #{words}"
    words
  end

  def scored_words
    words.sort.map { |word| scorer.score_string(word) }
  end

private

  def initialize(options = {})
    populate_from_hash(options)
    self.dictionary ||= Dictionary.new(DictionaryFile.words_in(WORD_PATH))
    self.scorer ||= Scorer.new
    self.string ||= ''
    self.words ||= []

    puts "DICTIONARY: #{dictionary.words[0, 2]}..."
    puts "SCORER: #{scorer.scores}..."
    puts "STRING: #{string}"
  end
end
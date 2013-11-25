class LetterTally
  include PopulateFromHash

  # Input
  attr_reader :letters

  # Output
  attr_accessor :letter_count

  def tally
    Hash[*letters.group_by(&:chr).map { |letter, occurrences| [letter, occurrences.size]}.flatten ]
  end

private

  # Convenience
  def word(string)
    letters(Strings::letters_in(string))
  end

  def initialize(options = {})
    populate_from_hash(options``)
  end
end
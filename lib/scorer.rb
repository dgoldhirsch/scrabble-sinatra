class Scorer
  attr_accessor :scores

  def score_string(string)
    string.downcase.split('').inject(0) { |result, letter| result + score_lowercase_letter(letter) }
  end

private

  def default_scores
    Hash.new[
      'a', 1,
      'b', 3,
      'c', 3,
      'd', 2,
      'e', 1,
      'f', 4,
      'g', 2,
      'h', 4,
      'i', 1,
      'j', 8,
      'k', 5,
      'l', 1,
      'm', 3,
      'n', 1,
      'o', 1,
      'p', 3,
      'q', 10,
      'r', 1,
      's', 1,
      't', 1,
      'u', 1,
      'v', 4,
      'w', 4,
      'x', 8,
      'y', 4,
      'z', 10
    ]
  end

  # Allow overriding of scoring hash, for easier testing
  def initialize(overriding_scores = {})
    self.scores =
      if overriding_scores.any?
        overriding_scores
      else
        default_scores
      end
  end

  def score_lowercase_letter(letter)
    scores[letter] || 0 # in case we get something like "howdy3%^" despite UI and app guards
  end
end

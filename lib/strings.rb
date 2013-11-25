module Strings
  def self.letters_in(string)
    string.downcase.split("").map(&:strip)
  end

  def self.string_contains_anagram?(string, anagram)
    letters_in(anagram).all? do |anagram_letter|
      word.include?(anagram_letter)
    end
  end
end
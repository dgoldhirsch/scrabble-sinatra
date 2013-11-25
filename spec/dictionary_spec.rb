require_relative 'test_helper'

describe 'Dictionary' do
  describe '#words_spelled_with' do
    before { @dictionary = Dictionary.new(['rub', 'bur', 'ruby', 'bury', 'rubby', 'brubby', 'store']) }

    describe 'given no letters (sanity check)' do
      it 'returns no words' do
        @dictionary.words_containing_anagram('').must_equal([])
      end
    end

    describe 'given an anagram that is a subset of (larger) words' do
      it 'finds the larger words as well' do
        Set.new(@dictionary.words_containing_anagram('ybru')).must_equal(Set['rub', 'bur', 'ruby', 'bury'])
      end
    end

    describe 'given an anagram with duplicated letters' do
      it 'finds words with the same number of each letter' do
        Set.new(@dictionary.words_containing_anagram('bbrxyu')).must_equal(Set['rub', 'bur', 'ruby', 'bury', 'rubby'])
      end
    end
  end
end

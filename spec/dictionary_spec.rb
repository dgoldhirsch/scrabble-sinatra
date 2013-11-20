require_relative 'test_helper'

describe 'Dictionary' do
  describe '#words_spelled_with' do
    before { @dictionary = Dictionary.new(['rub', 'bur', 'ruby', 'bury', 'store']) }

    describe 'given no letters (sanity check)' do
      it 'returns no words' do
        @dictionary.words_spelled_with([]).must_equal([])
      end
    end

    describe 'given an anagram of words in the dictionary' do
      it 'finds those words' do
        @dictionary.words_spelled_with(['b', 'r', 'u']).to_set.must_equal(Set['rub', 'bur'])
      end
    end

    describe 'given an anagram that is a subset of (larger) words' do
      it 'finds the larger words as well' do
        @dictionary.words_spelled_with(['y', 'b', 'r', 'u']).to_set.must_equal(Set['rub', 'bur', 'ruby', 'bury'])
      end
    end
  end
end

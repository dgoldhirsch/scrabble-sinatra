require_relative 'test_helper'

describe 'Scorer' do
  describe '#score_string' do

    before { @scorer = Scorer.new('a' => 1, 'b' => 2) }

    describe 'given an empty string (sanity check)' do
      before { @string = '' }

      it 'returns 0' do
        @scorer.score_string('').must_equal(0)
      end
    end

    describe 'given a string with no known letters' do
      before { @string = 'zygote' }

      it 'returns 0' do
        @scorer.score_string('').must_equal(0)
      end
    end

    describe 'given a string with known, unknown ,and non-alphabetic letters' do
      before { @string = 'ab  whuh.....#$%^&' }

      it 'scores only the known, alphabetic letters' do
        @scorer.score_string(@string).must_equal(3)
      end
    end
  end
end

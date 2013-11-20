require_relative 'test_helper'

describe 'Dictionary File' do
  describe '.words_in' do
    describe 'given a sample dictionary file' do
      before do
        directory_path = File.dirname(__FILE__)
        file_name = 'sample_dictionary_file.txt' # make sure file with this name is in this test's directory
        @words = DictionaryFile.words_in(File.join(directory_path, file_name))
      end

      it 'contains the expected words' do
        @words.to_set == Set['bur', 'rub', 'bury', 'ruby', 'store']
      end
    end

    describe 'given an unknown dictionary file (sanity check)' do
      it 'blows the hell up' do
        proc{ DictionaryFile.words_in('what_the_fk') }.must_raise(Errno::ENOENT)
      end
    end
  end
end

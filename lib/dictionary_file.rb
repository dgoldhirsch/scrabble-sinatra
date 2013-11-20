module DictionaryFile
  def self.words_in(path)
    file = File.new(path, 'r')
    entire_file = file.read # So-called slurping the entire file--frowned upon because it takes so much memory
    entire_file.split("\n") # Let runtime library figure out characters denoting new-line
  end
end

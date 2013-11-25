module PopulateFromHash
  def populate_from_hash(hash)
    return self if hash.nil?

    hash.each do |key, value|
      begin
        self.__send__("#{key}=", value)
      rescue NoMethodError
        raise "**Error**, Attempt by a #{self.class} to set non-attribute: #{key}"
      end
    end
    self
  end
end
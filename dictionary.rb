class Dictionary

  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def add(entry)
    if entry.class == String
      @entries[entry] = nil
    elsif entry.class == Hash
      entry.each do | key , value |
        @entries[key] = value
      end
    end
  end



  def keywords
    @entries.keys.sort
  end

  def include?(key)
    @entries.has_key?(key)
  end

  def find(word)
    @entries.select {| key, value| key.include? word }
  end

  # def keywords
  #   @d
  # end

end

d = Dictionary.new
p d.entries
puts d.add('fish' => 'aquatic animal')

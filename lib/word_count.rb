class String
  define_method(:count) do |word_to_count|
    counter = 0
    split = self.split()
    split.each do |word|
      word_to_count = word.gsub(/[!,@,?,"",:,;,.]/, '')
      counter += 1 if word == word_to_count
    end
    counter
  end
end

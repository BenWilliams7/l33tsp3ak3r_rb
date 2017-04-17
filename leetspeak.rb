class String
  def leetspeak
    sentence = Array.new
    self.split(" ").each do |word|
      leetWordSplitter = word.split(//).map.with_index do |char, i|
        if i > 0 && char == "s"
          "z"
        elsif char == "e"
          "3"
        elsif char == "o"
          "0"
        elsif char == "I"
          "1"
        else
          char
        end
      end
    sentence.push(leetWordSplitter.join)
    end
    sentence.join(" ")
  end
end

# Could have Leetspeak as the class and have a def for letter and a def for word. Spencer endorses this method and is really upset at the one-method approach. "Yes" - Spencer

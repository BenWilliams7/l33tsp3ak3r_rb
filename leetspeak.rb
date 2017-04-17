class String
  def leetspeak
    sentence = Array.new
    self.split(" ").each do |word|
      roger = word.split(//).map.with_index do |char, i|
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
    sentence.push(roger.join)
    end
    sentence.join(" ")
  end
end

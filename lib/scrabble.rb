class String
  define_method(:scrabble) do
    letters = self.split("")
    score = 0
    letters.each() do |letter|
      letter.upcase!()
      if ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"].include?(letter)
        score += 1
        # puts score.class
      elsif ["D", "G"].include?(letter) # == "D" || letter == "G"
        score += 2
      elsif ["B", "C", "M", "P"].include?(letter)
        score += 3
      elsif ["F", "H", "V", "W", "Y"].include?(letter)
        score += 4
      elsif ["K"].include?(letter)
        score += 5
      elsif ["J", "X"].include?(letter)
        score += 8
      elsif ["Q", "Z"].include?(letter)
        score += 10
      end
    end
    return score
  end
end

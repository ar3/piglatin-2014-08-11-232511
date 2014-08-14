class Piglatin
  attr_accessor :phrase

  VOWELS = ['a', 'e', 'i', 'o', 'u']
  def initialize the_phrase
    self.phrase = the_phrase
  end

  def translate
    if phrase.empty?
      nil
    else
      if phrase.chars.last == 'y'
        return "#{phrase}nay";
      elsif !VOWELS.include? phrase.chars.last
        return "#{phrase}ay";
      else
        return "#{phrase}yay";
      end
    end
  end
end

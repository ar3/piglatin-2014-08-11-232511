class Piglatin
  attr_accessor :phrase

  VOWELS = ['a', 'e', 'i', 'o', 'u']
  def initialize the_phrase
    self.phrase = the_phrase
  end

  def translate
    if phrase.empty?
      nil
    elsif !VOWELS.include? phrase.chars.first
      return "#{phrase[1, 999999]}#{phrase.chars.first}ay";
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

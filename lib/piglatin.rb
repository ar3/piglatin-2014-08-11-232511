class Piglatin
  attr_accessor :phrase
  def initialize the_phrase
    self.phrase = the_phrase
  end

  def translate
    phrase.empty? ? nil : ''
  end
end

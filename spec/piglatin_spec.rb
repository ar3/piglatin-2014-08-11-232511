require 'piglatin'

describe Piglatin, '#phrase' do
  it "should The string is a list of words seperated by spaces: 'hello world'" do
    expect {
      translator = Piglatin.new 'hello world'
    }.to_not raise_error
  end

  it 'should The string is accessed by a method named phrase' do
    translator = Piglatin.new 'something'
    expect(translator.phrase).to eq 'something'
  end

  it 'should The string can be reset at any time without re-initializing' do
    translator = Piglatin.new 'something'
    translator.phrase = 'something else'
    expect(translator.phrase).to eq 'something else'
  end
end




describe Piglatin, 'Create a translate method that translates the phrase from english to pig-latin.' do
  it 'should: The method will return a string.' do
    translator = Piglatin.new 'something'
    expect(translator.translate).to be_a String
  end
  it 'should: The empty string will return nil.' do
    translator = Piglatin.new ''
    expect(translator.translate).to be_nil
  end
end




describe Piglatin, 'Translate words that start with vowels.' do
  it 'should: Append "ay" to the word if it ends in a consonant. example: "ask" translates to "askay"' do
    translator = Piglatin.new 'ask'
    expect(translator.translate).to eq 'askay'
  end

  it 'should: Append "yay" to the word if it ends with a vowel. example: "apple" translates to "appleyay"' do
    translator = Piglatin.new 'apple'
    expect(translator.translate).to eq 'appleyay'
  end

  it 'should: Append "nay" to the word if it ends with "y". example: "any" translates to "anynay"' do
    translator = Piglatin.new 'any'
    expect(translator.translate).to eq 'anynay'
  end
end








describe Piglatin, 'Translate a word that starts with a single consonant.' do
  it 'should: Removing the consonant from the front of the word.' do
    translator = Piglatin.new 'hello'
    expect(translator.translate).to eq 'ellohay'
  end

  it 'should: Add the consonant to the end of the word.' do
    translator = Piglatin.new 'world'
    expect(translator.translate).to eq 'orldway'
  end

  # it 'should: Append "ay" to the resulting word.'
end

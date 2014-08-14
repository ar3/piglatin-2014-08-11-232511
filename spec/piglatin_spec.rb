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



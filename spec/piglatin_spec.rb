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



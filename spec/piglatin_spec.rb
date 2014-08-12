require 'piglatin'

describe Piglatin do
  describe "#initialize" do
    it "instantiates" do
      expect {
        Piglatin.new
      }.to_not raise_error
    end
  end
end

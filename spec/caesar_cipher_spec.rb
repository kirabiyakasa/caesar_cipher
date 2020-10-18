require './main.rb'

  describe :caesar_cipher do
  it "takes a positive integer and shifts (to the right) each letter in a
    string that number of times in the alphabet" do
    expect(caesar_cipher("word", 3)).to eql("zrug")
  end

  it "takes a negative integer and shifts to the left" do
    expect(caesar_cipher("word", -5)).to eql("rjmy")
  end

  it "starts back from \"a\" after hitting \"z\"" do
    expect(caesar_cipher("word", 5)).to eql("btwi")
  end

  it "is case sensitive" do
    expect(caesar_cipher("WoRd", 3)).to eql("ZrUg")
  end

  it "can return sumbols and numbers" do
  expect(caesar_cipher("W0R|)!", 10)).to eql("G0B|)!")
  end

end

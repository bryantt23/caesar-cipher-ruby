require "spec_helper"
require_relative "../lib/caesar_cipher"

RSpec.describe "Caesar Cipher" do
  it "runs hello world test" do
    expect("hello").to eq("hello")
  end
  
  it "easy test" do 
    expect(caesar_cipher("abc", 1)).to eq("bcd")
  end
  
  xit "easy test capitalized" do 
    expect(caesar_cipher("ABC", 1)).to eq("BCD")
  end

  xit "passes a baseline test" do 
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
end

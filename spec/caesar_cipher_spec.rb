require "spec_helper"
require_relative "../lib/caesar_cipher"

RSpec.describe "Caesar Cipher" do  
  it "easy test" do 
    expect(caesar_cipher("a", 1)).to eq("b")
    expect(caesar_cipher("z", 1)).to eq("a")
  end
  
  it "easy test capitalized" do 
    expect(caesar_cipher("A", 1)).to eq("B")
    expect(caesar_cipher("Z", 1)).to eq("A")
  end

  it "passes a baseline test" do 
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
end

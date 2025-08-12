require "spec_helper"
require_relative "../lib/caesar_cipher"

RSpec.describe "Caesar Cipher" do
  it "runs hello world test" do
    expect("hello").to eq("hello")
  end
end

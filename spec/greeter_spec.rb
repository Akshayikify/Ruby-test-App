require_relative '../lib/greeter'

RSpec.describe Greeter do
  it "says hello" do
    greeter = Greeter.new("Test")
    expect(greeter.say_hello).to eq("Hello, Test!")
  end

  it "says goodbye" do
    greeter = Greeter.new("Test")
    expect(greeter.say_goodbye).to eq("Goodbye, Test, come back soon.")
  end
end

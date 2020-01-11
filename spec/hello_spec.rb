describe "saying hello" do
  it "means I say hello back" do
    greeter = Greeter.new
    expect(greeter).to be_equal_to "hello"
  end
end
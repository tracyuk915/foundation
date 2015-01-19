require 'rspec'
require_relative 'r_spec_greeter'

# describe 'My behaviour' do
#
#   it 'should do something' do
#
#     true.should == false
#   end
# end

describe "RSpec Greeter" do

  it "should say 'Hello Rspec' when it receives the greet() message" do
    greeter = RSpecGreeter.new
    greeting = greeter.greet
    greeting.should == "Hello RSpec"
  end

  it do

  end

end
require 'spec_helper'

describe A do
  
  before do
  	@a = A.new(name: "Diggity")
  end

  subject { @a }

  it { should respond_to(:name) }
#  it { should respond_to(:bs) }

#  it { should be_valid }

  describe "when name is not present" do
    before { @a.name = " " }
    it { should_not be_valid }
  end
end

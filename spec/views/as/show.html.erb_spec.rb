require 'spec_helper'

describe "as/show" do
  before(:each) do
    @a = assign(:a, stub_model(A,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end

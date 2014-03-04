require 'spec_helper'

describe "as/index" do
  before(:each) do
    assign(:as, [
      stub_model(A,
        :name => "Name"
      ),
      stub_model(A,
        :name => "Name"
      )
    ])
  end

  it "renders a list of as" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

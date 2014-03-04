require 'spec_helper'

describe "as/edit" do
  before(:each) do
    @a = assign(:a, stub_model(A,
      :name => "MyString"
    ))
  end

  it "renders the edit a form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", a_path(@a), "post" do
      assert_select "input#a_name[name=?]", "a[name]"
    end
  end
end

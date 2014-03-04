require 'spec_helper'

describe "as/new" do
  before(:each) do
    assign(:a, stub_model(A,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new a form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", as_path, "post" do
      assert_select "input#a_name[name=?]", "a[name]"
    end
  end
end

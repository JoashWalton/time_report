require 'rails_helper'

RSpec.describe "publishers/new", type: :view do
  before(:each) do
    assign(:publisher, Publisher.new(
      :pub_first_name => "MyString",
      :pub_last_name => "MyString",
      :pub_email => "MyString",
      :pub_phone_number => "MyString"
    ))
  end

  it "renders new publisher form" do
    render

    assert_select "form[action=?][method=?]", publishers_path, "post" do

      assert_select "input[name=?]", "publisher[pub_first_name]"

      assert_select "input[name=?]", "publisher[pub_last_name]"

      assert_select "input[name=?]", "publisher[pub_email]"

      assert_select "input[name=?]", "publisher[pub_phone_number]"
    end
  end
end

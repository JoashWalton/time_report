require 'rails_helper'

RSpec.describe "publishers/edit", type: :view do
  before(:each) do
    @publisher = assign(:publisher, Publisher.create!(
      :pub_first_name => "MyString",
      :pub_last_name => "MyString",
      :pub_email => "MyString",
      :pub_phone_number => "MyString"
    ))
  end

  it "renders the edit publisher form" do
    render

    assert_select "form[action=?][method=?]", publisher_path(@publisher), "post" do

      assert_select "input[name=?]", "publisher[pub_first_name]"

      assert_select "input[name=?]", "publisher[pub_last_name]"

      assert_select "input[name=?]", "publisher[pub_email]"

      assert_select "input[name=?]", "publisher[pub_phone_number]"
    end
  end
end

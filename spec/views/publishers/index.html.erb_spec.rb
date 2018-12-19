require 'rails_helper'

RSpec.describe "publishers/index", type: :view do
  before(:each) do
    assign(:publishers, [
      Publisher.create!(
        :pub_first_name => "Pub First Name",
        :pub_last_name => "Pub Last Name",
        :pub_email => "Pub Email",
        :pub_phone_number => "Pub Phone Number"
      ),
      Publisher.create!(
        :pub_first_name => "Pub First Name",
        :pub_last_name => "Pub Last Name",
        :pub_email => "Pub Email",
        :pub_phone_number => "Pub Phone Number"
      )
    ])
  end

  it "renders a list of publishers" do
    render
    assert_select "tr>td", :text => "Pub First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Pub Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Pub Email".to_s, :count => 2
    assert_select "tr>td", :text => "Pub Phone Number".to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "publishers/show", type: :view do
  before(:each) do
    @publisher = assign(:publisher, Publisher.create!(
      :pub_first_name => "Pub First Name",
      :pub_last_name => "Pub Last Name",
      :pub_email => "Pub Email",
      :pub_phone_number => "Pub Phone Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Pub First Name/)
    expect(rendered).to match(/Pub Last Name/)
    expect(rendered).to match(/Pub Email/)
    expect(rendered).to match(/Pub Phone Number/)
  end
end

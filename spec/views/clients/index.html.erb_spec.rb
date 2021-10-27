require 'rails_helper'

RSpec.describe "clients/index", type: :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        last_name: "Last Name",
        first_name: "First Name"
      ),
      Client.create!(
        last_name: "Last Name",
        first_name: "First Name"
      )
    ])
  end

  it "renders a list of clients" do
    render
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: "First Name".to_s, count: 2
  end
end

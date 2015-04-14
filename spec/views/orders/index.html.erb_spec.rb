require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :address => "Address",
        :name => "Name",
        :greeting => "Greeting"
      ),
      Order.create!(
        :address => "Address",
        :name => "Name",
        :greeting => "Greeting"
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Greeting".to_s, :count => 2
  end
end

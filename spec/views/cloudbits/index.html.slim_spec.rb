require 'rails_helper'

RSpec.describe "cloudbits/index", type: :view do
  before(:each) do
    assign(:cloudbits, [
      Cloudbit.create!(
        :name => "Name"
      ),
      Cloudbit.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of cloudbits" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

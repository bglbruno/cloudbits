require 'rails_helper'

RSpec.describe "cloudbits/show", type: :view do
  before(:each) do
    @cloudbit = assign(:cloudbit, Cloudbit.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end

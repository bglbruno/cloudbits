require 'rails_helper'

RSpec.describe "cloudbits/edit", type: :view do
  before(:each) do
    @cloudbit = assign(:cloudbit, Cloudbit.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit cloudbit form" do
    render

    assert_select "form[action=?][method=?]", cloudbit_path(@cloudbit), "post" do

      assert_select "input#cloudbit_name[name=?]", "cloudbit[name]"
    end
  end
end

require 'rails_helper'

RSpec.describe "cloudbits/new", type: :view do
  before(:each) do
    assign(:cloudbit, Cloudbit.new(
      :name => "MyString"
    ))
  end

  it "renders new cloudbit form" do
    render

    assert_select "form[action=?][method=?]", cloudbits_path, "post" do

      assert_select "input#cloudbit_name[name=?]", "cloudbit[name]"
    end
  end
end

require 'rails_helper'

RSpec.describe "techstacks/new", type: :view do
  before(:each) do
    assign(:tech_stack, Techstack.new)
  end

  it "renders new tech_stack form" do
    render

    assert_select "form[action=?][method=?]", techstacks_path, "post" do
    end
  end
end

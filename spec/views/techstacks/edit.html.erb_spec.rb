require 'rails_helper'

RSpec.describe "techstacks/edit", type: :view do
  before(:each) do
    @tech_stack = assign(:tech_stack, Techstack.create!)
  end

  it "renders the edit tech_stack form" do
    render

    assert_select "form[action=?][method=?]", techstack_path(@tech_stack), "post" do
    end
  end
end

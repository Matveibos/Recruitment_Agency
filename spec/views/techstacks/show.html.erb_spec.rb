require 'rails_helper'

RSpec.describe "techstacks/show", type: :view do
  before(:each) do
    @tech_stack = assign(:tech_stack, Techstack.create!)
  end

  it "renders attributes in <p>" do
    render
  end
end

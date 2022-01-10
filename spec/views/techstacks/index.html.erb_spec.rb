require 'rails_helper'

RSpec.describe "techstacks/index", type: :view do
  before(:each) do
    assign(:tech_stacks, [
      Techstack.create!,
      Techstack.create!,
    ])
  end

  it "renders a list of techstacks" do
    render
  end
end

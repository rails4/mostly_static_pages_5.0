require 'rails_helper'

RSpec.describe "static_pages/help.html.erb", type: :view do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "displays string StaticPages#help" do
    render
    expect(rendered).to include("StaticPages#help")
  end
end

require 'rails_helper'

RSpec.describe "static_pages/home.html.erb", type: :view do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "displays string StaticPages#home" do
    render
    expect(rendered).to include("StaticPages#home")
  end
end

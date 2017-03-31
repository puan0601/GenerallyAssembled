require 'rails_helper'

RSpec.describe "repos/index", type: :view do
  before(:each) do
    assign(:repos, [
      Repo.create!(),
      Repo.create!()
    ])
  end

  it "renders a list of repos" do
    render
  end
end

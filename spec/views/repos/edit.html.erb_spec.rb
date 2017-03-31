require 'rails_helper'

RSpec.describe "repos/edit", type: :view do
  before(:each) do
    @repo = assign(:repo, Repo.create!())
  end

  it "renders the edit repo form" do
    render

    assert_select "form[action=?][method=?]", repo_path(@repo), "post" do
    end
  end
end

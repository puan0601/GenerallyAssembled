require 'rails_helper'

RSpec.describe "repos/new", type: :view do
  before(:each) do
    assign(:repo, Repo.new())
  end

  it "renders new repo form" do
    render

    assert_select "form[action=?][method=?]", repos_path, "post" do
    end
  end
end

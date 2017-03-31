require 'rails_helper'

RSpec.describe "repos/show", type: :view do
  before(:each) do
    @repo = assign(:repo, Repo.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

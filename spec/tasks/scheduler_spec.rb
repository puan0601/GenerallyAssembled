require 'rails_helper'
require 'rake'

describe 'scheduler rake task' do
  before :all do
    Rake.application.rake_require "tasks/scheduler"
    Rake::Task.define_task(:environment)
  end

  describe 'scheduler:git_repos' do
    let :run_rake_task do
      Rake::Task["git_repos"].reenable
      Rake.application.invoke_task "git_repos"
    end

    it "should receive new object" do
      Bar.any_instance.should_receive :repo
      run_rake_task
    end

    it "should great new repo" do
      Bar.any_instance.should_receive :repo
      run_rake_task
    end

  end
end

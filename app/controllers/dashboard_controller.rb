class DashboardController < ApplicationController
  def index
    @github_user = GithubUser.new(current_user)
    @followers = GithubUser.new(current_user).followers
  end
end

class DashboardController < ApplicationController
  def index
    @followers = GithubUser.new(current_user).followers
  end
end
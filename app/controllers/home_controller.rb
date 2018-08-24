class HomeController < ApplicationController
  def index
    # response = Faraday.get("https://api.github.com/users/wehttamclan")
    # data = JSON.parse(response.body, symbolize_names: true)
    #
    # followers_url = Faraday.get(data[:followers_url])
    # @followers = JSON.parse(followers_url.body, symbolize_names: true)
  end
end

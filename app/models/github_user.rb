class GithubUser #inherit from SimpleDelegator.  instantiate with a user, get rid of the initialize user
  attr_reader :provider, :uid, :name, :image, :token

  def initialize(user)
    @user = user
  end

  def followers
    binding.pry
    get_json("/followers")
  end



  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names:true)
  end

  def conn
    Faraday.new(:url => "https://api.github.com/users/#{@user.username}") do |faraday|
      faraday.headers["Authorization"] = "token #{ENV["github_test_token"]}"
      faraday.adapter Faraday.default_adapter
    end
  end

end

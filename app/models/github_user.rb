class GithubUser #inherit from SimpleDelegator.  instantiate with a user, get rid of the initialize user
  def initialize(user)
    @user = user
  end

  def followers
    get_json("users/#{@user.login}/followers").map do |follower_info|
      Follower.new(follower_info)
    end
  end

  def repos
    get_json("users/#{@user.login}/repos").map do |repo_info|
      Repo.new(repo_info)
    end
  end

  private

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names:true)
  end

  def conn
    Faraday.new(:url => "https://api.github.com/") do |faraday|
      faraday.headers["Authorization"] = "token #{ENV["github_test_token"]}"
      faraday.adapter Faraday.default_adapter
    end
  end

end

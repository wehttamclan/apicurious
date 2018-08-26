class Follower
  attr_reader :login, :avatar_url

  def initialize(info)
    @login = info[:login]
    @avatar_url = info[:avatar_url]
  end
end

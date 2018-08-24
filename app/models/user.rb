class User < ApplicationRecord
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid   = auth["uid"]
      user.name  = auth["info"]["name"]
      user.image = auth["extra"]["raw_info"]["avatar_url"]
      user.token = auth["credentials"]["token"]
    end
  end
end

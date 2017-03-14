class User < ApplicationRecord
  has_many :posts
  has_secure_password

  validates :username, :avatar, presence: true
  validates :username, uniqueness: true
  # validates_uniqueness_of :username

  def avatar
    attributes["avatar"].blank? ? "https://robohash.org/#{username}.png" : attributes["avatar"]
  end

end

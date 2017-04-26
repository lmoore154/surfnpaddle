class User < ApplicationRecord
  has_many :posts
  has_secure_password

  validates :username, :avatar, :email, presence: true
  validates :username, :email, uniqueness: true
  # validates_uniqueness_of :username

  def avatar
    attributes["avatar"].blank? ? "https://robohash.org/#{username}.png" : attributes["avatar"]
  end


end

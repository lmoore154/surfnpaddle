class Post < ApplicationRecord
  belongs_to :user

  mount_uploader :picture, PostPictureUploader

  validates :title, :body, presence: true
  validates :title, length: { minimum: 10,
            message: -> (object, data) do
              "Your post title is #{(10 - data[:value].length)} characters too short."
            end
          }

  def owned_by?(this_user)
    user == this_user || this_user.admin?
  end

  def image_version(version = :bottom)
    if picture?
      picture.versions[version].url
    else
      image
    end
  end

end

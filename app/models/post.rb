class Post < ApplicationRecord
  belongs_to :user

  validates :title, :body, presence: true
  validates :title, length: { minimum: 10,
            message: -> (object, data) do
              "Your post title is #{(10 - data[:value].length)} characters too short."
            end
          }

  def is_owner?(this_user)
    user == this_user
  end

end

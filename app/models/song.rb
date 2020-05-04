class Song < ApplicationRecord
  validates :title, presence: true, :repeat_title
end

class Song < ApplicationRecord
  validates :title, presence: true, :repeat_title
  validates :released, inclusion: {[true, false]}
end

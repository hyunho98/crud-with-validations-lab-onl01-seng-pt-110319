class Song < ApplicationRecord
  validates :title, presence: true, :repeat_title
  validates :released, inclusion: {[true, false]}
  validates :release_year, presence: true, if: :is_released?
  validates :release_year, :not_in_the_future
  validates :artist_name, presence: true
end

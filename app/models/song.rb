class Song < ApplicationRecord
  validates :title, presence: true, :repeat_title
  validates :released, inclusion: {[true, false]}
  validates :release_year, presence: true, if: :released?
end

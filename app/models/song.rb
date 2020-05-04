class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: {scope: %i[release_year artist_name]}
  validates :released, inclusion: {in: [true, false]}
  validates :release_year, presence: true, if: :is_released?
  validates :release_year, numericality: {less_than_or_equal_to: Date.year}
  validates :artist_name, presence: true

  private


end

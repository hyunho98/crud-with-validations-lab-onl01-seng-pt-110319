class Song < ApplicationRecord
  validates :title, presence: true, :repeat_title
  validates :released, inclusion: {in: [true, false]}
  validates :release_year, presence: true, if: :is_released?
  validates :release_year, :not_in_the_future
  validates :artist_name, presence: true

  private

  def repeat_title
    songs = Song.find_by(title: title)
    songs.each do |song|
      if song.artist == artist && song.release_year == release_year
        errors.add(:title, "song already exists")
      end
    end
  end
end

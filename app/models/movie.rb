class Movie < ActiveRecord::Base
  has_many :movie_formats
  has_many :formats, through: :movie_formats

  has_many :movie_apps
  has_many :apps, through: :movie_apps

  has_many :movie_definitions
  has_many :definitions, through: :movie_definitions

  validates :title, presence: true, uniqueness: true

  def self.search(term)
    searchTerm = term
    Movie.where("title LIKE ?", "%#{searchTerm}%")
  end
end

class Movie < ActiveRecord::Base
  has_many :movie_formats
  has_many :formats, through: :movie_formats

  has_many :movie_apps
  has_many :apps, through: :movie_apps

  validates :title, presence: true, uniqueness: true
end

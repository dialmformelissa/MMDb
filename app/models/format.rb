class Format < ActiveRecord::Base
  has_many :movie_formats
  has_many :movies, through: :movie_formats
end

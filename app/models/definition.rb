class Definition < ActiveRecord::Base
  has_many :movie_definitions
  has_many :movies, through: :movie_definitions
end

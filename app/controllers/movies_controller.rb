class MoviesController < ApplicationController
  before_action :find_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    redirect_to movies_path
  end

  def edit
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

  private

  def find_movie
    @movie = Movie.find_by_id(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title)
  end
end
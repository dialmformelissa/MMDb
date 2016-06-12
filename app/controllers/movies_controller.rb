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
    
    if @movie.save
      flash[:notice] = "Saved!"
      redirect_to movies_path
    else
      flash.now[:error] = "There's an issue saving!"
      render :new
    end
  end

  def update
    if @movie.update(movie_params)
      redirect_to movies_path, notice: "Updated!"
    else
      flash.new[:error] = "There's an issue saving!"
    end
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
    params.require(:movie).permit(:title, :format, :movie_format, :app, :movie_app, :definition, :movie_definition, :definition_ids => [], :app_ids => [], :format_ids => [])
  end
end
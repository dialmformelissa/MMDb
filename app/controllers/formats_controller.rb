class FormatsController < ApplicationController
  before_action :find_format, only: [:index, :show, :edit, :update, :destroy]
  
  def index
    @formats = Format.all
  end

  def show
  end

  def new
    @format = Format.new
  end

  def create
    @format = Format.create(format_params)
    
    if @format.save
      flash[:notice] = "Saved!"
      redirect_to formats_path
    else
      flash.now[:error] = "There's an issue saving!"
      render :new
    end
  end

  def update
    if @format.update(format_params)
      redirect_to format_path, notice: "Updated!"
    else
      flash.new[:error] = "There's an issue saving!"
    end
  end

  def edit
  end

  def destroy
    @format.destroy
    redirect_to formats_path
  end

  private

  def find_format 
    @format = Format.find_by_id(params[:id])
  end

  def format_params
    params.require(:format).permit(:name)
  end

end
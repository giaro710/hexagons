class PathsController < ApplicationController

  before_action :set_user, only: [:show, :new, :create, :edit, :update]
  before_action :find_path

  def show
    # raise
    # @hexagon = Hexagon.new
  end

  def new
    @path = Path.new
  end


  def create
    @path = Path.new(path_params)
    if @path.save
      redirect_to path_path(@path)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @path.update(path_params)
      redirect_to @path, notice: 'The path was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_user
    @user = current_user
  end

  def find_path
    @path = current_user.paths.find(params[:id])
  end

  def path_params
    params.require(:path).permit(:name, :user_id)
  end
end

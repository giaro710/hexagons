class PathsController < ApplicationController

  before_action :set_user, only: [:index, :show, :new, :create, :edit, :update]
  before_action :find_path, only: [:show, :edit, :update, :destroy]

  def index
    @paths = @user.paths.all
  end

  def show
    # raise
    # @hexagon = Hexagon.new
  end

  def new
    @path = Path.new
  end


  def create
    @path = Path.new(path_params)
    @path.user = @user
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

  def destroy
    @path.destroy

    redirect_to paths_path
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

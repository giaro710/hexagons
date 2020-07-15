class HexagonsController < ApplicationController

  before_action :find_path, except: [:destroy]
  before_action :find_hexagon, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @hexagon = Hexagon.new
  end

  def create
    @hexagon = Hexagon.new(hexagon_params)
    @hexagon.path = @path

    if @hexagon.save
      redirect_to path_path(@path)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @hexagon.update(hexagon_params)
      redirect_to path_path(@path)
    else
      reder :edit
    end
  end

  def destroy
    @hexagon.destroy
    redirect_to path_path(@hexagon.path)
  end

  private

  def find_hexagon
    @hexagon = Hexagon.find(params[:id])
  end

  def hexagon_params
    params.require(:hexagon).permit(:title, :date, :short_description, :long_content)
  end

  def find_path
    @path = Path.find(params[:path_id])
  end

end

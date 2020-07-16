class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_user

  def home
  end

  def profile
  end

  private

  def set_user
    @user = current_user
  end


end

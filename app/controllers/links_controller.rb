class LinksController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @link = @user.links.new
  end
  def create
    @user = User.find(params[:user_id])
    @link = @user.links.new(link_params)
    if @link.save
      redirect_to user_path(@link.user)
    else
      render :new
    end
  end

  private
    def link_params
      params.require(:link).permit(:url)
    end
end

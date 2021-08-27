class KicksController < ApplicationController
 def index
  @kicks = Kick.all
 end

  def show
    shoe = Kick.find(params[:id])
      if shoe

        render json: shoe
      else
        render json: shoe.errors
      end
  end

  def edit
    @kick = Kick.find(params[:id])
  end
end

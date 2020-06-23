class KidsController < ApplicationController
  def index
    @kids = Kid.all

    render json: { kids: @kids }
  end

  def create
    @kid = Kid.new(kid_params)
    if @kid.errors.any?
      render :index
    else
      @kid.save
      redirect_to kids_path
    # if @kid.valid?
    #   @kid.save
    #   redirect_to kids_path
    # else
    #   render :index
    end
  end

  private

  def kid_params
    params.require(:kid).permit(:username, :description, :favorite_color, :age)
  end
end

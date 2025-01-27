class SpacesController < ApplicationController
  before_action :set_space, only: [:inquire, :submit_inquiry]
  def inquire
  end

  def new
    @space = Space.new
    render 'list_space'
  end 

  def create
    @space = Space.new(space_params)
    if @space.save
      redirect_to @space
    else
      render :new
    end
  end

  def show
    @space = Space.friendly.find(params[:slug])
  end

  def submit_inquiry
    redirect_to space_path(@space), notice: "Your inquiry has been submitted!"
  end

  private
  def space_params
    params.require(:space).permit(:name, :per_hour, :location, :capacity, :area, :description, images: [])
  end

  def set_space
    @space = Space.friendly.find(params[:slug])
  end
end

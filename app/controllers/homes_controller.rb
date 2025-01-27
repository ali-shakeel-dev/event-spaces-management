class HomesController < ApplicationController
  def index
    @spaces = Space.all
  end
end

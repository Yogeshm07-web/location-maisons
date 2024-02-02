class PropertiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_property, only: [:show]

  def index
    @properties = Property.all


  end

  def show
    @booking = Booking.new
  end

  private
  def set_property
    @property = Property.find(params[:id])
  end
end

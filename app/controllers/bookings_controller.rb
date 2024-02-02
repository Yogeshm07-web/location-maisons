class BookingsController < ApplicationController
    before_action :set_booking, only: [:destroy]
    before_action :authenticate_user!
    before_action :set_property, only: [:new, :create]

    def new
      @booking = Booking.new
    end

    def create
      @booking = Booking.new(booking_params)
      @booking.property = @property
      @booking.user = current_user
      if @booking.save
        redirect_to property_path(@property)
      else
        render :new, status: :unprocessable_entity
      end
    end

    def index
      @bookings = current_user.bookings
    end
    def destroy
      @booking.destroy
      redirect_to bookings_url, notice: 'Booking was successfully destroyed.'
    end
    private
      def set_property
        @property = Property.find(params[:property_id])
      end
      def set_booking
        @booking = Booking.find(params[:id])
      end
      def booking_params
        params.require(:booking).permit(:total_price, :start_time, :end_time, :property_id)
      end

  end

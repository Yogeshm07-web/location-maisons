class BookingsController < ApplicationController
    before_action :set_booking, only: [:destroy]
    before_action :authenticate_user!
    def create
      @booking = current_user.bookings.new(booking_params)
      if @booking.save
        redirect_to bookings_path, notice: 'Booking was successfully created.'
      else
        render :new
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
      def set_booking
        @booking = Booking.find(params[:id])
      end
      def booking_params
        params.require(:booking).permit(:total_price, :start_time, :end_time, :property_id)
      end
  end

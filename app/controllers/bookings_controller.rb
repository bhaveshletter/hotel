class BookingsController < ApplicationController

	def index
    	@bookings = current_user.bookings
	end	
	
	# def new
	#   @booking = Booking.new
	# end
 
	def booking_info
	 	@room = Room.find_by_id(params[:room_id])	
	 	@booking = @room.bookings.create(final_price: params[:total_price],date: params[:start_date],end_date: params[:end_date], user_id: current_user.id )
	 	redirect_to bookings_path
	end	

	
end

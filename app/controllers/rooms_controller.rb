class RoomsController < ApplicationController
	def index
		@rooms = Room.all
    end 

	def new
	  @room = Room.new
	end
 
	def create
	  @hotel=Hotelapp.find_by_id(params[:room][:hotelapp_id])
	  @room =  @hotel.rooms.create(room_params)
	  redirect_to rooms_path
	end

	def room_type
		@rooms = Room.all
		@all_room = []
		@start_date = params[:check_in].to_date
        @end_date = params[:check_out].to_date
        @days = (@end_date - @start_date).to_i
        book = (@start_date..@end_date).map { |d| d.strftime("%d-%m-%Y") }.flatten
        if params[:room_type] == "all"
			@specific_rooms = @rooms
		else
			@specific_rooms = @rooms.map{|x| x if x.room_type == params[:room_type]}.compact
		end
		@specific_rooms.each do |room|
			booking_date =[]
			room.bookings.each do |booking|
				booking_date << ((booking.date.to_date)..(booking.end_date.to_date)).map { |d| d.strftime("%d-%m-%Y") }
			end
			total=booking_date.flatten & book
			unless total.compact.present?
				@all_room << room
			end	
			
		end

	end	

	def show
		
	end	
	private
		def room_params
			params.require(:room).permit(:room_type , :bed_type, :pool_facing , :gym , :breakfast , :pick_n_drop , :price , :room_no, :room_floor ,:hotelapp_id, :image )
		end
end

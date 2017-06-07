class HotelappsController < ApplicationController
    def index
       @hotels = Hotelapp.all
    end 

	def new
	  @hotel = Hotelapp.new
	end
 
	def create
	  @hotel = Hotelapp.create(hotel_params) 
	  redirect_to hotels_path
	end
 
	private
		def hotel_params
			params.require(:hotelapp).permit(:name , :address , :city , :country , :contact , :zipcode)
	end
end

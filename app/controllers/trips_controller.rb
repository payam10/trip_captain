class TripsController < ApplicationController
	def index
		@trips = Trip.all 
	end

	def new
		@trip = Trip.new 
	end
	
	def create
		@trip = Trip.create(trip_params)
		current_member.trips << @trip 

		redirect_to member_trip_path(current_member.id, @trip.id) 
	end

	def show
		@trip = Trip.find(params[:id])
	end

	private

	def trip_params
		params.require(:trip).permit(:where, :when, :price)
	end

end

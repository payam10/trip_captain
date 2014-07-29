class RegistrationsController < Devise::RegistrationsController
	protected

	def after_sign_up_path_for(resource)
	  #log in after register
	  after_sign_in_path_for(resource)
	end

	def after_sign_in_path_for(resource)
	  #redirect to new trip page after log in
	  new_member_trip_path(current_member)
	end
end
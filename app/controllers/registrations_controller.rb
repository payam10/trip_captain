class RegistrationsController < Devise::RegistrationsController
	protected

	def after_sign_up_path_for(resource)
	  #log in after register
	  after_sign_in_path_for(resource)
	end
end
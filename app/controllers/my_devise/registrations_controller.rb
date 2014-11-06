# app/controllers/my_devise/registrations_controller.rb
class MyDevise::RegistrationsController < Devise::RegistrationsController

	def update
		super
	end
	private
	def sign_up_params
		params.require(:user).permit(:username, :email, :password, :password_confirmation, :administrator, :technician, :labBoss)
	end
	def account_update_params
		params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password, :administrator, :technician, :labBoss)
	end
end
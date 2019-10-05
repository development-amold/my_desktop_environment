class ApplicationController < ActionController::API
	def hello
		render plain: "Hey....Backend Application Working Successfully"
	end
end

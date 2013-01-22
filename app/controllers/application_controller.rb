class ApplicationController < ActionController::Base

	def index
		@all_uploads = Upload.all
	end

  protect_from_forgery
end

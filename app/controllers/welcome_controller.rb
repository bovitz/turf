class WelcomeController < ApplicationController

	def index
		@all_uploads = Upload.all
		@all_headers = Header.all
	end

end

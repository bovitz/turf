class WelcomeController < ApplicationController

	def index
		@all_uploads = Upload.find_all_by_project_id(cookies[:current_project_id])
		@all_project_profiles = ProjectProfile.find_all_by_project_id(cookies[:current_project_id])
		@all_results = Result.find_all_by_project_id(cookies[:current_project_id])
		if cookies[:current_project_id]
			@welcome_title = Project.find(cookies[:current_project_id]).name
		else
			@welcome_title = "No project selected"
		end
	end

end

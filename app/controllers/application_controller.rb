class ApplicationController < ActionController::Base

	before_filter :list_all_projects

	def list_all_projects
		@all_projects = Project.all
		cookies[:current_project_id] = { :value => params[:current_project_id], :expires => 20.years.from_now } if params[:current_project_id]
		@current_project_id = cookies[:current_project_id]
	end

	def index
		@all_uploads = Upload.all
	end

  protect_from_forgery
end

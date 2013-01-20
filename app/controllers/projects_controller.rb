class ProjectsController < ApplicationController

	def new
		@project = Project.new
	end

	def create
		@project = Project.create(params[:project])
		redirect_to root_path
	end

end

class ProjectProfilesController < ApplicationController

	def new
		@project_profile = ProjectProfile.new
	end

	def create
		@project_profile = ProjectProfile.new(params[:project_profile])
		if @project_profile.save
			flash[:notice] = "Project profile '#{@project_profile.name}' created"
			redirect_to root_path
		else
			flash[:notice] = "The form contains errors"
			flash[:errors] = @project_profile.errors.full_messages
			render 'new'
		end
	end

	def edit
		@project_profile = ProjectProfile.find(params[:id])
	end

	def update
		@project_profile = ProjectProfile.find(params[:id])
		if @project_profile.update_attributes(params[:project_profile])
			flash[:notice] = "Project profile '#{@project_profile.name}' edits saved"
			redirect_to root_path
		else
			flash[:notice] = "The form contains errors"
			flash[:errors] = @project_profile.errors.full_messages
			render 'edit'
		end
	end

	def destroy
		project_profile = ProjectProfile.find(params[:id])
		flash[:notice] = "Project profile '#{project_profile.name}' deleted"
		project_profile.destroy
		redirect_to root_path
	end

end

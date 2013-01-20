class UploadsController < ApplicationController

	def new
	end

	def create
		Upload.import(params[:file], Upload.create(:name => params[:file].original_filename, :project_id => params[:current_project_id]))
		flash[:notice] = "File '#{params[:file].original_filename}' uploaded"
		redirect_to root_path
	end

	def destroy
		upload = Upload.find(params[:id])
		flash[:notice] = "Upload '#{upload.name}' deleted"
		upload.headers.destroy_all
		upload.observations.destroy_all
		upload.destroy
		redirect_to root_path
	end

	def delete_all
		Upload.destroy_all
		Header.destroy_all
		Observation.destroy_all
		flash[:notice] = "All uploads deleted"
		redirect_to root_path
	end

	def view_observations
		@upload = Upload.find(params[:id])
		@headers = @upload.headers
		@observations = @upload.observations
	end
		
end

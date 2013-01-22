class UploadsController < ApplicationController

	def index
		@all_uploads = Upload.all
	end

	def new
	end

	def create
		Upload.import(params[:file], Upload.create(:name => params[:file].original_filename, :row_count => params[:file].size).id)
		flash[:notice] = "File '#{params[:file].original_filename}' uploaded"
		redirect_to root_path
	end

	def destroy
		@upload = Upload.find(params[:id])
		@upload.destroy and Header.find_all_by_upload_id(@upload.id).each { |header| header.destroy } and Observation.find_all_by_upload_id(@upload.id).each { |observation| observation.destroy }
		flash[:notice] = "Upload '#{@upload.name}' deleted"
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
		@observations = Observation.find_all_by_upload_id(params[:id])
	end

end

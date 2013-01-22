class Upload < ActiveRecord::Base
	attr_accessible :name, :row_count
	has_many :headers
	has_many :observations
	def self.import(file, upload_id)
		@header_ids = []
		CSV.foreach(file.path) do |row|
			row.each_with_index do |field, index|
				if $. == 1
					@header_ids << Header.create(:name => field, :upload_id => upload_id).id
				else
					Observation.create(:case => row[0], :punch => field, :upload_id => upload_id, :header_id => @header_ids[index]) unless index == 0
				end
			end
		end
	end

end

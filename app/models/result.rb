class Result < ActiveRecord::Base
  attr_accessible :combo, :frequency, :name, :reach, :total_respondents, :total_buyers, :project_id, :upload_id, :project_profile_id
	belongs_to :project
	belongs_to :upload
	belongs_to :project_profile
	has_many :headers, :through => :upload
	has_many :observations, :through => :headers
end

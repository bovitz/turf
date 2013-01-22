class Observation < ActiveRecord::Base
  attr_accessible :case, :punch, :upload_id, :header_id
	belongs_to :upload
	belongs_to :header
end

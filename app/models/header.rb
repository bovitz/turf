class Header < ActiveRecord::Base
  attr_accessible :name, :upload_id
	belongs_to :upload
	has_many :observations
end

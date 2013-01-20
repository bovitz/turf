class Observation < ActiveRecord::Base
  attr_accessible :case_id, :punch, :header_id
	belongs_to :header
end

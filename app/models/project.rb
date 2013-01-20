class Project < ActiveRecord::Base
  attr_accessible :name
	has_many :uploads
	has_many :project_profiles
	has_many :results
end

class ProjectProfile < ActiveRecord::Base
	attr_accessible :name, :buy_prefix, :freq_prefix, :num_varieties, :threshold, :combo_size, :project_id
	belongs_to :project
	has_many :results

	validates :name, :presence => true, :uniqueness => true
	validates :buy_prefix, :presence => true, :format => { :with => /^\S+$/ , :message => "must not contain spaces"}
	validates :freq_prefix, :presence => true, :format => { :with => /^\S+$/ , :message => "must not contain spaces"}
	validates :num_varieties, :numericality => { :only_integer => true, :greater_than => 0 }
	validates :threshold, :numericality => { :only_integer => true }
	validates :combo_size, :numericality => { :only_integer => true, :greater_than => 0 }
end

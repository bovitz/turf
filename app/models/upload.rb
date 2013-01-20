class Upload < ActiveRecord::Base
  attr_accessible :name, :row_count, :project_id
  belongs_to :project
  has_many :headers
  has_many :observations, :through => :headers
  has_many :results

  def self.import(file, upload)
    @header_ids = []
    CSV.foreach(file.path) do |row|
      row.each_with_index do |field, index|
        if $. == 1
          @header_ids << upload.headers.create(:name => field).id
        else
          Header.find(@header_ids[index]).observations << Observation.new(:case_id => row[0], :punch => field) unless index == 0
        end
      end
    end
    upload.update_attributes(:row_count => upload.observations.collect{ |observation| observation.case_id }.uniq.count)
  end

end

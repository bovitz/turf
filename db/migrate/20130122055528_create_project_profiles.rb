class CreateProjectProfiles < ActiveRecord::Migration
  def change
    create_table :project_profiles do |t|

      t.timestamps
    end
  end
end

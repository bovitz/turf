class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :name
      t.string :combo, :default => 'N/A'
      t.integer :reach, :default => '0'
      t.integer :frequency, :default => '0'
      t.integer :total_respondents
      t.integer :total_buyers, :default => '0'
			t.integer :project_id
			t.integer :upload_id
			t.integer :project_profile_id
      t.timestamps
    end
  end
end

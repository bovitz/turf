class CreateProjectProfiles < ActiveRecord::Migration
  def change
    create_table :project_profiles do |t|
			t.string :name
			t.string :buy_prefix
			t.string :freq_prefix
			t.integer :num_varieties
			t.integer :threshold
			t.integer :combo_size
			t.integer :project_id
      t.timestamps
    end
  end
end

class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
			t.string :name
			t.integer :row_count
			t.integer :project_id
      t.timestamps
    end
  end
end

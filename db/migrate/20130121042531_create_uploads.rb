class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
			t.string :name
			t.integer :row_count
      t.timestamps
    end
  end
end

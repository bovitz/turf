class CreateHeaders < ActiveRecord::Migration
  def change
    create_table :headers do |t|
			t.string :name
			t.integer :upload_id
      t.timestamps
    end
  end
end

class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.string :case
      t.integer :punch
			t.integer :upload_id
			t.integer :header_id
      t.timestamps
    end
  end
end

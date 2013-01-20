class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.string :case_id
      t.integer :punch
			t.integer :header_id
      t.timestamps
    end
  end
end

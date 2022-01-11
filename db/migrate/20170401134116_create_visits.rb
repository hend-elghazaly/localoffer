class CreateVisits < ActiveRecord::Migration[5.0]
  def change
    create_table :visits do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :registration_id

      t.timestamps
    end
  end
end

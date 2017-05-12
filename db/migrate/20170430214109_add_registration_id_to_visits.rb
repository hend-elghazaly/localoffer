class AddRegistrationIdToVisits < ActiveRecord::Migration[5.0]
  def change
    add_column :visits, :registration_id, :integer
  end
end

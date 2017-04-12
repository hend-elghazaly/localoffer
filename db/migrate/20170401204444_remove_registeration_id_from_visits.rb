class RemoveRegisterationIdFromVisits < ActiveRecord::Migration[5.0]
  def change
    remove_column :visits, :registration_id, :integer
  end
end

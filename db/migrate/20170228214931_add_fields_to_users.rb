class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :user, :first_name, :string
    add_column :user, :last_name, :string
  end
end

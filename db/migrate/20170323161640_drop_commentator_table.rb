class DropCommentatorTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :commontator_comments
  end
end

class DropCommentator3Table < ActiveRecord::Migration[5.0]
  def change
    drop_table :commontator_threads
  end
end

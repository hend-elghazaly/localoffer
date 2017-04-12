class DropLinkClicks < ActiveRecord::Migration[5.0]
  def change
    drop_table :link_clicks
  end
end

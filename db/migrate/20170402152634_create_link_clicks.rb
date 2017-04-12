class CreateLinkClicks < ActiveRecord::Migration[5.0]
  def change
    create_table :link_clicks do |t|
      t.integer :visit_id
      t.string :link_name
      t.string :link_css_id
      t.text :url
      t.datetime :created_at
      t.datetime :updated_at
      t.references :visit_id, foreign_key: true

      t.timestamps
    end
  end
end

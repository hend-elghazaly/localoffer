# == Schema Information
#
# Table name: link_clicks
#
#  id          :integer          not null, primary key
#  visit_id    :integer
#  link_name   :string
#  link_css_id :string
#  url         :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  visit_id_id :integer
#

class LinkClick < ApplicationRecord
  belongs_to :visit_id
end

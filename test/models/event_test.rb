# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  title      :string
#  start      :datetime
#  end        :datetime
#  color      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
 #  test "title attribute must not be empty" do
 #    event = Event.new
 #    assert event.invalid?
 #    assert event.errors[:title].any?
 #    assert event.errors[:id].any?
 #    assert event.errors[:created_at].any?
 #    assert event.errors[:updated_at].any?
 #
 #
 # end
end

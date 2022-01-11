require 'test_helper'

class EventControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = products(:one)
    @update = {
      title: 'Test event',
      id:    1,
      start: '2017-04-30 17:58:2',
      end:   '2017-04-30 17:58:2',
      created_at: '2017-04-30 17:58:27',
      updated_at: '2017-04-30 17:58:27.483645'
    }
  end
  

end

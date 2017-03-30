var initialize_calendar;
initialize_calendar = function() {
  //to loop through each calendar class
  $('.calendar').each(function(){
    //set the calendar variable to this for now because we are going to use the calendar
    //variable within the callbacks to reference back to the calendar object

    var calendar = $(this);
    //initialize the calendar which now refers to this

    calendar.fullCalendar({
      //modifying the header to show previous, next month and today buttons as well as in days and weeks

      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay'
      },
      //to be able to select multiple days
      selectable: true,
      //to show the bar when dragging days
      selectHelper: true,
      //to make changes and add things to the calendar
      editable: true,
      //in case a day has too many events it will show a + sign
      eventLimit: true,
      events: '/events.json',

      //when selecting a date (or dates) to add an event
      select: function(start, end) {
        $.getScript('/events/new', function() {
        //for date
          $('#event_date_range').val(moment(start).format("MM/DD/YYYY HH:mm") + ' - ' + moment(end).format("MM/DD/YYYY HH:mm"))
          date_range_picker();
          $('.start_hidden').val(moment(start).format('YYYY-MM-DD HH:mm'));
          $('.end_hidden').val(moment(end).format('YYYY-MM-DD HH:mm'));
        });

        calendar.fullCalendar('unselect');
      },

      eventDrop: function(event, delta, revertFunc) {
        event_data = {
          event: {
            id: event.id,
            start: event.start.format(),
            end: event.end.format()
          }
        };
        $.ajax({
            url: event.update_url,
            data: event_data,
            type: 'PATCH'
        });
      },

      eventClick: function(event, jsEvent, view) {
        $.getScript(event.edit_url, function() {
          $('#event_date_range').val(moment(event.start).format("MM/DD/YYYY HH:mm") + ' - ' + moment(event.end).format("MM/DD/YYYY HH:mm"))
          date_range_picker();
          $('.start_hidden').val(moment(event.start).format('YYYY-MM-DD HH:mm'));
          $('.end_hidden').val(moment(event.end).format('YYYY-MM-DD HH:mm'));
        });
      }
    });
  })
};
$(document).on('turbolinks:load', initialize_calendar);

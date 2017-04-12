class NewsController < ApplicationController

  # Define the Event object
   class Event
     def initialize(title, date, link, description, contact, email)
       @title = title
       @date = date
       @link = link
       @description = description
       @contact = contact
       @email = email

     end
     attr_reader :title
     attr_reader :date
     attr_reader :link
     attr_reader :description
     attr_reader :contact
     attr_reader :email

   end

  def scrape_events
    # Pull in the page
    require 'open-uri'
    doc = Nokogiri::HTML(open("http://www.sheffielddirectory.org.uk/kb5/sheffield/directory/whats_on.page"))

    # Narrow down on what we want and build the entries array
    events = doc.css('.result_hit')
    @eventsArray = []
    events.each do |result_hit|
      title = result_hit.css('h2>a').text
      date = result_hit.css('.subheading_section').text
      description = result_hit.css('.description').text
      link = result_hit.css('h2>a')[0]['href']
      contact = result_hit.css('.contact_link')[0]['href']
      email = result_hit.css('.hit-email>a').text
      #website = result_hit.css('footer>a')[0]['href']
      @eventsArray << Event.new(title, date, link, description, contact, email)
    end

    # render the array
    render template: 'news/scrape_events'

  end


  # def addEventSource
  #   event={id:1 , title: 'title', start: 'date' end: 'date'}
  #   event.fullCalendar( 'addEventSource', event )
  # end

end

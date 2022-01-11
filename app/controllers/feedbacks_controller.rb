class FeedbacksController < ApplicationController

# Adapted from https://www.youtube.com/watch?v=QIoORYeBdhs

  #new feedback object assigned to a new instant variable called @feedback to display the form
  def new
    @feedback = Feedback.new
  end

#to save the information from the form
  def create
    @feedback = Feedback.new(params[:feedback])
    #The user agent and session will be sent in the e-mail in a request information session.
    @feedback.request = request
    #if there was an error in sending the form
    if @feedback.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = 'Cannot send feedback.'
      render :new
  end
end
end

class SitemapController < ApplicationController
  layout nil
#from http://aspiringwebdev.com/sitemaps-in-rails-in-five-minutes/
  def index
    headers['Content-Type'] = 'application/xml'
    respond_to do |format|
      format.xml {@posts = Post.all}
    end
  end
end

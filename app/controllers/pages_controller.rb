class PagesController < ApplicationController
  def home
    @current_nav_identifier = :home
  end

  def visit
    @current_nav_identifier = :visit
    @visits = Visit.joins(:link_clicks).order('created_at DESC').uniq
  end
end

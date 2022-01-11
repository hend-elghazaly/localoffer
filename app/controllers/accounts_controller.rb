class AccountsController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]

  def index
  end
end

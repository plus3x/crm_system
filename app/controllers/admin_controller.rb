class AdminController < ApplicationController
  # GET /admin
  def index
    @total_users = User.count
  end
end

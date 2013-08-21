class AdminController < ApplicationController
  before_action { redirect_to home_url if not current_user.admin? }
  
  # GET /admin
  def index
    @total_users = User.count
  end
end

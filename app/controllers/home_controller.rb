class HomeController < ApplicationController
  skip_before_action :authorize
  
  # GET /
  def index
  end
end

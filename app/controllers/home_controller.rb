class HomeController < ApplicationController
  def index
  end
  
  def add_form
    respond_to do |format|
      format.turbo_stream
        @targtes = params[:target]
    end
  end
end

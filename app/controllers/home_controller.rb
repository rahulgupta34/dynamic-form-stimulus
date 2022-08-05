class HomeController < ApplicationController
  require 'csv'
  include HomeHelper
  
  def index
  end
  
  def add_form
    respond_to do |format|
      format.turbo_stream
        @targtes = params[:target]
    end
  end
  
  def dynamic_dropdown
     @results = CsvDatum.all
     respond_to do |format|
       format.html
       format.csv { send_data @results.to_csv, filename: "users-#{Date.today}.csv" }
     end
  end
  
  def csv_import
    file = params[:file_import] if params[:file_import].present?
    call(file)
  redirect_to drop_down_path
  end
end

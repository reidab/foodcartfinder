class ReportsController < ApplicationController
  
  def index
    @reports = Report.all
  end
  
  def new
    page_title "New Report"

    @report = Report.new
    @map = Mapstraction.new("map_div", :yahoo)
    @map.control_init(:small => true)
    @map.center_zoom_init([45.521094,-122.676274],17)
  end
  
  def create
    params[:report][:food_types].reject!(&:blank?)
    params[:report][:diet_friendliness].reject!(&:blank?)
    @report = Report.new(params[:report])
    if @report.save
      flash[:success] = "Your report was successfully created!"
      redirect_to :action => "new"
    else
      flash[:error] = "FAIL"
      render :action => "new"
    end
  end
  
end

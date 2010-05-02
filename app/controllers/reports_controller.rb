class ReportsController < ApplicationController
  
  def new
    @report = Report.new
    @map = Mapstraction.new("map_div", :yahoo)
    @map.control_init(:small => true)
    @map.center_zoom_init([45.521094,-122.676274],17)
    # @map.marker_init(Marker.new([45.528479,-122.676086], :label => "Here", :info_bubble => "Info! Info!"))
  end
  
  def create
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

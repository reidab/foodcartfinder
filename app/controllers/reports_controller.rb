class ReportsController < ApplicationController
  
  def new
    @report = Report.new
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

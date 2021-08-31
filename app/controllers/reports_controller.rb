class ReportsController < ApplicationController
  def index
    @reports = Report.all
  end

  def show
    @report = Report.find(params[:id])
    @reviews = @report.reviews
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    @report.user = current_user
    if @report.save
      redirect_to reports_path(@report)
    else
      render :new
    end
  end

  def close
    @report = Report.find(params[:id])
    @report.destroy
    redirect_to report_path
  end

  private
  def report_params
    params.require(:report).permit(:description, :category, :danger_level, :address, :photo)
  end
end

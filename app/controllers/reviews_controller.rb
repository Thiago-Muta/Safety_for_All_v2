class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @report = Report.find(params[:report_id])
    @review = Review.new
  end

  def create
    @report = Report.find(params[:report_id])
    if @report.status
      @review = Review.new(review_params)
      @review.report = @report
      @review.user = current_user
      if @review.save
        redirect_to report_path(@report), notice: 'review was successfully created.'
      else
        render :new
      end
    else
      redirect_to @report, alert: 'Report already Finished!'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to report_path(@review.report)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

end

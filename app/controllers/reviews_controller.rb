class ReviewsController < ApplicationController

  def index
    @reviews = policy_scope(Review)
  end

  def new
    @report = Report.find_by(id: params[:report_id])
    redirect_to reports_path, notice: 'Report not found!' if @report.nil?
    @review = Review.new
    authorize @review
  end

  def create
    @report = Report.find(params[:report_id])
    if @report.status
      @review = Review.new(review_params)
      authorize @review
      @review.report = @report
      @review.user = current_user
      if @review.save
        ReviewsChannel.broadcast_to(@report, {report_id: @report.id, review_count: @report.reviews.length, partial: render_to_string(partial: 'review', locals: {review: @review})})
        #  ActionCable.server.broadcast(@report, render_to_string(partial: 'review', locals: { review: @review }))
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
    authorize @review
    @review.destroy
    redirect_to report_path(@review.report)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

end

class InterviewsController < ApplicationController
  respond_to :html

  def new
    @interview = current_user.interviews.build
  end

  def create
    @interview = current_user.interviews.build interview_params

    if @interview.save
      flash[:notice] = "Successfully created interview."
    end

    respond_with @interview
  end

  def show
    @interview = current_user.interviews.find params[:id]
  end

  private
    def interview_params
      params.require(:interview).permit \
        :job_url, :resume_url, :description, :time
    end
end
class InterviewsController < ApplicationController
  respond_to :html

  def new
    @interview = current_user.interviews.build
  end

  def create
    @interview = current_user.interviews.create interview_params

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
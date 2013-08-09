class HomeController < ApplicationController
  before_filter :authenticate_user!, only: :show
  layout 'public'

  def index

  end

  def show
    @interviews = current_user.interviews
  end
end
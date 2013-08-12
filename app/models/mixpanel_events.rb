module MixpanelEvents
  HomeController.before_filter -> { track_visited_landing_page }, only: :index
  Devise::RegistrationsController.before_filter -> { track_clicked_cta }, only: :new
  Devise::RegistrationsController.before_filter -> { track_signed_up }, only: :create
  InterviewsController.before_filter -> { track_created_interview }, only: :create

  private
    def track_visited_landing_page
      mixpanel.track 'visited_landing_page', source: params[:source] || 'direct'
    end

    def track_clicked_cta
      mixpanel.track 'clicked_cta', position: params[:position]
    end

    def track_signed_up
      mixpanel.track 'signed_up'
    end

    def track_created_interview
      mixpanel.track 'created_interview'
    end 
end
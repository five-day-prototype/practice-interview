Rails.application.config.middleware.use "Mixpanel::Middleware", ENV["MIXPANEL_TOKEN"], persist: true
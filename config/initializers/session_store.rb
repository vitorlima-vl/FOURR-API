if Rails.env == "production"
	Rails.application.config.session_store :cookie_store, key: "_fourr-api", domain: "fourr.herokuapp.com"
else
	Rails.application.config.session_store :cookie_store, key: "_fourr-api"
end
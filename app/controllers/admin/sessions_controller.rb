class Admin::SessionsController < ::Devise::SessionsController
  layout "sessions"
  skip_before_filter :authenticate_admin_user!
end
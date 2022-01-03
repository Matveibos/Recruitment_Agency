class ApplicationController < ActionController::Base
  # include pundit
  before_action :authenticate_user!
end

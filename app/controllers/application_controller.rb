class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  caches_page :home
end

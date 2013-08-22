class ApplicationController < ActionController::Base
  protect_from_forgery
  
# around_filter :profile if Rails.env == 'development'
# before_filter :set_timeout if Rails.env == 'development'
# around_filter :action_profiler unless Rails.env.production?
# 
# def set_timeout
  # if params[:profile]
	# Rack::Timeout.timeout = 0
  # end
# end
# 
# def profile
  # require 'ruby-prof'
  # if params[:profile] && result = RubyProf.profile { yield }
# 
    # out = StringIO.new
    # RubyProf::GraphHtmlPrinter.new(result).print out, :min_percent => 0
    # self.response_body = out.string
# 
  # else
    # yield
  # end
# end

protected

  def user_for_paper_trail
    admin_user_signed_in? ? current_admin_user : 'Unknown user'
  end
  
  rescue_from CanCan::AccessDenied do |exception|
    if !current_admin_user.nil? then
      redirect_to admin_dashboard_path, :alert => exception.message
    else
      redirect_to clientarea_dashboard_path, :alert => exception.message
    end
  end

  def current_ability
    @current_ability ||= Ability.new(current_admin_user) unless current_admin_user.nil?
    @current_ability ||= Ability.new(current_contact)
  end
end

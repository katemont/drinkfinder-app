class ApplicationController < ActionController::Base
  protect_from_forgery

<<<<<<< HEAD
  before_filter :initialize_search
=======
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, alert: "Sorry - you can't access that page"
  end
>>>>>>> master

  protected
  def after_sign_in_path_for(resource)
    recommendations_path
  end

  def initialize_search
    @q = Recommendation.search(params[:q])
    @result = @q.result
  end

end

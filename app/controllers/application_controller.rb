class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :initialize_search

  protected
  def after_sign_in_path_for(resource)
    recommendations_path
  end

  def initialize_search
    @q = Recommendation.search(params[:q])
    @result = @q.result
  end

end
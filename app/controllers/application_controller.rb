class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  
  private

  def not_found
    render template: 'errors/404', status: :not_found
  end
end

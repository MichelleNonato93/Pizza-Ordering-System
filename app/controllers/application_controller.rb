class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_order

  def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    else
      Order.new(user_id: current_user.id, total: 0, status: "pending")
    end
  end

  protected

  def after_sign_in_path_for(resource)
    if resource.role == "admin"
    	admin_path
    else
    	orderpage_path
    end
  end

end

class ApplicationController < ActionController::Base
  
  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :angler
        root_path
    elsif resource_or_scope == :admin
        new_admin_session_path
    end
  end
end

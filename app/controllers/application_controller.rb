class ApplicationController < ActionController::Base
    include ApplicationHelper
    protect_from_forgery prepend: true 

    def after_sign_in_path_for(resource)
        home_admin_path
    end

    def after_sign_up_path_for(resource)
        home_admin_path
    end
end

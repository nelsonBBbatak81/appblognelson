class Admin::HomeController < AdminController
    before_action :set_active_url

    def index
        render template: "admin/home/index"
    end

    private 
        def set_active_url
            @activehomeadmin = 'active'
        end
end
class AdminsController < ApplicationController
    #Links to my /admin route
    #links to a /views/admin/index.html.erb
    def index
        @admin = Admin.all
    end

    #Links to my  /admin/:id route
    #links to a views/admin/show.html.erb
    def show
        @admin = Admin.find(params[:id])
    end
end

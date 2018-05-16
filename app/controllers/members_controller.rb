class MembersController < ApplicationController
    before_action :authenticate_member!
    #Links to my /member route
    #links to a /views/member/index.html.erb
    def index
        @member = Member.all
        redirect_to '/admins/1'
    end

    #Links to my  /member/:id route
    #links to a views/member/show.html.erb
    def show
        @member = Member.find(params[:id])
        redirect_to '/admins/1'
    end

    def destroy
        @member = Member.find(params[:id])
        redirect_to '/members/sign_in'
    end
    
end
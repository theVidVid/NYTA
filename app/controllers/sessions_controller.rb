class SessionsController < ApplicationController
  before_action :authenticate_member!
  def new
  end
  
  def create
    @member = member.find_by(email: params[:session][:email].downcase)
    if member && member.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
    else
      # Create an error message.
      render 'new'
    end
  end

  def destroy
  end

end

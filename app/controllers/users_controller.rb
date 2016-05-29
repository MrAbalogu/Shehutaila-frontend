class UsersController < ApplicationController

  def home 
  	
  end 	 	
  
  def show
    @user = User.find(params[:id])
  end

end

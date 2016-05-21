class PagesController < ApplicationController
  before_action :authenticate_user!

  def home
    @user = User.find(params[:id])
  end   

  def signin
  end  

  def confirm_account
  end  

  def progress
  end	

  def landingpage
  end

  def landingpage9
  end 	

  def landingpage10	
  end 	

  def landingpage2
  end 	

  def landingpage11
  end

  def landingpage8
  end

  def landingpage3
  end
end

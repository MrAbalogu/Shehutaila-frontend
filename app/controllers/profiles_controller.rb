class ProfilesController < ApplicationController

  def show
   end

   def update
      redirect_to :show if current_user.update profile_params
   end

   private

   def profile_params
      params.require(:user).permit(profile_attributes: [:first_name, :last_name])
   end

end

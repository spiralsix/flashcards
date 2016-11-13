class WelcomeController < ApplicationController
  def splash
    if current_user
      redirect_to "/users/#{current_user.id}"
    end
  end
end

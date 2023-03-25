class SplashesController < ApplicationController
  skip_before_action :authenticate_user!
  def hello
    redirect_to groups_path if user_signed_in?
  end
end

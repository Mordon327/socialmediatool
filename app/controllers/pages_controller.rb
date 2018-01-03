class PagesController < ApplicationController
  def home
    can_see
  end

  def facebook
    can_see
  end

  def instagram
    can_see
  end

  def twitter
   can_see
  end

  private
  def can_see
    if !current_user
      redirect_to new_user_session_path
      flash[:alert] = "Log in to view this page."
    end
  end
end

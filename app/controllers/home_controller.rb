class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to(action: :index, controller: :dashboard)
    end
  end
end

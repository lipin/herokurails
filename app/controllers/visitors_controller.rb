class VisitorsController < ApplicationController
  def index
    if user_signed_in?
      redirect_to games_url
    end
  end
end
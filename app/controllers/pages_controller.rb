class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def stylesheet
  end

  def home
     @listings = Listing.all
  end
end

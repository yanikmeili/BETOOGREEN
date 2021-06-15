class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  # TODO: Share this tip with team
  def home
  end

  def stylesheet
  end
end

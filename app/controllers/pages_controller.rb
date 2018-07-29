class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
# saute=skip saute le before action seulement pour page home
  def home
  end
end

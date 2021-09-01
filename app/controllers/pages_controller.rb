class PagesController < ApplicationController
  skip_before_action :authenticate_rat!

  def home
  end
end

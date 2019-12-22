class StaticPagesController < ApplicationController
  def home
  	@campaigns = Campaign.all
  end

  def about
  	
  end

end

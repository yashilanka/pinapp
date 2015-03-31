class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def profile
  	@user = User.find(params[:id])

    respond_to do |format|
        format.html # show.html.erb
    end
  end
  
end

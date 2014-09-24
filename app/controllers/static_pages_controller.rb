class StaticPagesController < ApplicationController
  
  def create
    @static_page = StaticPage.new(static_page_params)
    if @static_page.save
      
      redirect_to root_url
    else
    	flash.now[:error] = 'Invalid Data Double Check Your Field'
      render 'home'
    end
  end

  def home
  	@static_page = StaticPage.new
  
  end

  private
  
  def static_page_params
    params.require(:static_page).permit(:name, :email, :phone, :message)
  end

end

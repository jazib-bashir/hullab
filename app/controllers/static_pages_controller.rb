class StaticPagesController < ApplicationController
  
  def create
    p static_page_params.inspect
    @static_page = StaticPage.new(static_page_params)
    if @static_page.save
      UserMailer.contact_email(@static_page.id).deliver
      redirect_to root_url
    else
    	flash.now[:danger] = 'Invalid Data Double Check Your Field'
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

class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  def contact_email(message_id)
  	@static_page = StaticPage.find_by id: message_id
  	
  	p "=========#{@static_page.inspect}"
  	mail(from: @static_page.email, to: 'jazibbashir@gmail.com', subject: "Contact")
  end
end

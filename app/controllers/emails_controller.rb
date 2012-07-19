class EmailsController < FrontendController

  def new
    @email = Email.new
  end

  def create
    @email = Email.new(params[:email])

    if @email.valid?
      ContactMailer.user_message(@email).deliver
      redirect_to root_path, :message => 'Your message has been sent. Thank you for 
        contacting us. :-)'
    else
      render 'new'
    end
  end
end

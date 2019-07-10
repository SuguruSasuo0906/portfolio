class IntroductionsController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.send_mail(@contact).deliver_now
      redirect_to root_path,notice:'お問い合わせ承りました。ありがとうざいます。'
    else
      flash.now[:alert] = 'メールの送信に失敗しました。'
      render :index
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name,:email,:tell,:message)
  end
end

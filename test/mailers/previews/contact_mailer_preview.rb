# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def contact
    contact = Contact.new(name:"サンプル",email:"sample@gmail.com",tell:"000-0000-0000",message:"samplesample")

    ContactMailer.send_mail(contact)
  end
end

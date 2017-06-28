class QuoteMailer < ActionMailer::Base
  default :from => "Balboa Pacific <noreply@balboapacific.com>"
  default :subject => "Balboa Quote Form Submitted"

  def send_email(quote)
    @quote = quote
    attachments["current_policy#{File.extname(quote.current_policy.file.filename)}"] = quote.current_policy.read if quote.current_policy.present?

    if Rails.env.production?
      mail(to: "joe@balboapacific.com", bcc: "tstafford@commercemtg.com")
    else
      mail(to: "richard.j.young@gmail.com")
    end
  end

end
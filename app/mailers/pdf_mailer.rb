class PdfMailer < ActionMailer::Base
  default from: "leejhampton@gmail.com"
  def pdf_email(email, issue_order)
    @issue_order = issue_order
    mail(to: email, subject: "Your copy of International Business Review Volume #{issue_order.issue.volume}")
  end
end

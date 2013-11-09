class IssueOrdersController < ApplicationController
  def new
    @issue = Issue.find_by_id(params[:issue_id])
    @issue_order = IssueOrder.new
  end

  def create
    charge = Stripe::Charge.create(
      :amount => 400,
      :currency => "usd",
      :card => params['issue_order']['stripe_card_token']
    )
    if charge['paid'] == true
      @issue_order = IssueOrder.new(email: params['issue_order']['email'], issue_id: params['issue_id'])
      if @issue_order.save
        @pdf_token = @issue_order.pdf_token
        PdfMailer.pdf_email(params['issue_order']['email'], @issue_order).deliver
      else 
        flash[:error] = "Your card was charged, but sadly we were unable to create 
        a record in the database. Please contact us for your copy of the issue."
      end
    else
      # run checks for errors and return error messages
      flash[:error] = "There was an error in processing your payment."
    end
  end

  def exchange_token_for_pdf
    issue_order = IssueOrder.where(pdf_token: params[:token]).first
    if issue_order
      data = open issue_order.issue.pdf.url
      send_data data.read, filename: issue_order.issue.pdf_file_name, type: "application/pdf", disposition: 'inline', stream: 'true', buffer_size: '4096'
    else
      p 'PDF not found'
    end
  end
end

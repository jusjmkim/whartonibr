class IssueOrdersController < ApplicationController
  def new
    @issue = Issue.find_by_id(params[:issue_id])
    @issue_order = IssueOrder.new
  end

  def create
    @issue_order = IssueOrder.new(email: params['issue_order']['email'], issue_id: params['issue_id'])
    if @issue_order.save
      @pdf_token = @issue_order.pdf_token
      PdfMailer.pdf_email(params['issue_order']['email'], @issue_order).deliver

      respond_to do |format|
        format.html { redirect_to '/', notice: 'Issue was successfully bought.' }
      end
    else
      flash[:error] = []
      @issue_order.errors.full_messages.each do |error_message|
        flash[:error].push(error_message)
      end
      respond_to do |format|
        format.js
      end
    end
  end

  def get_pdf
    issue = Issue.find(params[:issue_id])
    data = open issue.pdf.url
    send_data data.read, filename: issue_order.issue.pdf_file_name, type: "application/pdf", disposition: 'inline', stream: 'true', buffer_size: '4096'
  end
end

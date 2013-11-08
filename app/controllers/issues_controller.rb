class IssuesController < ApplicationController
  def new
    @issue = Issue.new
  end
  
  def create
    Issue.create(params[:issue])
  end

  def edit_all
    @issues = Issue.all
  end

  def update
    issue = Issue.find(params[:id])
    issue.update_attribute(:pdf, params[:issue][:pdf])
    render :json => {success: true}
  end

  def exchange_token_for_pdf
    issue = Issue.where(token: params[:token]).first
    if issue
      data = open issue.pdf.url
      send_Data data.read, filename: issue.pdf_file_name, type: "application/pdf", disposition: 'inline', stream: 'true', buffer_size: '4096'
    else
      p 'PDF not found'
    end
  end
end

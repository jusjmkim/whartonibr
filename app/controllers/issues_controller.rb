class IssuesController < ApplicationController
  before_filter :authenticate_admin!, only: [:new, :create, :edit_all, :update]

  def index
    @issues = Issue.all.order('created_at DESC')
  end

  def new
    @issue = Issue.new
  end
  
  def create
    Issue.create(params[:issue])
  end

  def edit_all
    @issues = Issue.all.order('created_at ASC')
  end

  def update
    issue = Issue.find(params[:id])
    issue.update_attribute(:pdf, params[:issue][:pdf])
    render :json => {success: true}
  end
end

class IssueOrdersController < ApplicationController
  def new
    @issue_order = IssueOrder.new
    p @issue_order
  end
end

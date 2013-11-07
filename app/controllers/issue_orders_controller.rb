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
        p 'Successfully logged order.'
      else 
        p 'Order went through, but order not logged in the database.'
      end
    else
      # run checks for errors and return error messages
      p 'Unable to create charge'
    end
  end
end

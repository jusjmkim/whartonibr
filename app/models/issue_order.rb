class IssueOrder < ActiveRecord::Base
  attr_accessible :email, :issue_id
  attr_accessor :stripe_card_token
end

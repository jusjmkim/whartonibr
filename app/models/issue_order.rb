# == Schema Information
#
# Table name: issue_orders
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  issue_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class IssueOrder < ActiveRecord::Base
  attr_accessible :email, :issue_id
  attr_accessor :stripe_card_token
end

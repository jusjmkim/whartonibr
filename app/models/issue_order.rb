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
  attr_accessible :email, :issue_id, :pdf_token
  attr_accessor :stripe_card_token
  before_save :generate_unique_token
  belongs_to :issue
  validates :email, presence: true

  private
  def generate_unique_token
    self.pdf_token ||= SecureRandom.hex
  end
end

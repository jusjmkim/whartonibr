require 'feature_helper'

RSpec.describe 'Feature Test: Stripe Test', type: :feature do
  before do
    visit '/issues/23/issue_orders/new'
  end

  it 'fills out and submits stripe credentials' do
  end
end
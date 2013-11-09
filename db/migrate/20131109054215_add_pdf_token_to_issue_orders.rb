class AddPdfTokenToIssueOrders < ActiveRecord::Migration
  def change
    add_column :issue_orders, :pdf_token, :string
  end
end

class CreateIssueOrders < ActiveRecord::Migration
  def change
    create_table :issue_orders do |t|
      t.string :email
      t.integer :issue_id

      t.timestamps
    end
  end
end

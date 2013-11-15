class AddIssueImgToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :issue_img, :string
  end
end

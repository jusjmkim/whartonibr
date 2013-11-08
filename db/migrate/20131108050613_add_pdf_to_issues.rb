class AddPdfToIssues < ActiveRecord::Migration
  def change
    add_attachment :issues, :pdf
  end
end

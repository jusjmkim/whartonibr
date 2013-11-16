class CreateHighlights < ActiveRecord::Migration
  def change
    create_table :highlights do |t|
      t.integer :issue_id
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end

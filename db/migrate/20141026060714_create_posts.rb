class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.string :body
      t.string :story_type

      t.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :author_id
      t.integer :category_id
    end
  end
end

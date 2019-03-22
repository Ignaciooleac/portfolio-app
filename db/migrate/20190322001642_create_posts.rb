class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :user, foreing_key: true
      t.references :post_tag, foreing_key: true
      t.references :category, foreing_key: true
      t.references :comment, foreing_key: true
      t.timestamps
    end
  end
end

class CreatePostTags < ActiveRecord::Migration[5.2]
  def change
    create_table :post_tags do |t|
      t.references :tag, foreing_key: true
      t.references :post, foreing_key: true
      t.timestamps
    end
  end
end

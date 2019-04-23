class DestroyPostTagFromPost < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :post_tag_id
  end
end

class CreateAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :attachments do |t|
      t.string :filename, :null => false
      t.references :post, foreing_key: true
      t.timestamps
    end
  end
end

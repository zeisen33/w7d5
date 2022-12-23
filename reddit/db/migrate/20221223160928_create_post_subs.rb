class CreatePostSubs < ActiveRecord::Migration[7.0]
  def change
    create_table :post_subs do |t|
      t.references :sub, foreign_key: true, null: false
      t.references :post, foreign_key: true, null: false
      t.timestamps
    end
  end
end

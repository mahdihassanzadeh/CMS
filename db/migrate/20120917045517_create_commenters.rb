class CreateCommenters < ActiveRecord::Migration
  def change
    create_table :commenters do |t|
      t.string :name
      t.text :email_address
      t.text :description
      t.integer :page_id

      t.timestamps
    end
  end
end

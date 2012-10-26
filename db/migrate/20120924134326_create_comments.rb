class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter_name
      t.string :email_address
      t.text :description
      t.references :page

      t.timestamps
    end
    add_index :comments, :page_id
  end
end

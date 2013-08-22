class CreateGadgets < ActiveRecord::Migration
  def change
    create_table :gadgets do |t|
      t.string :name
      t.string :gadget_picture
      t.integer :user_id
      t.timestamps
    end
  end
end

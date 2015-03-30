class CreateToDoItems < ActiveRecord::Migration
  def change
    create_table :to_do_items do |t|
      t.string :description
      t.references :to_do, index: true

      t.timestamps null: false
    end
    add_foreign_key :to_do_items, :to_dos
  end
end

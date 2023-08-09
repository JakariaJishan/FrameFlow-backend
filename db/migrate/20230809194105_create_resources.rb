class CreateResources < ActiveRecord::Migration[7.0]
  def change
    create_table :resources do |t|
      t.text :url, null: false
      t.string :type, null: false
      t.string :title, null: false
      t.string :description, null: false

      t.timestamps
    end
  end
end

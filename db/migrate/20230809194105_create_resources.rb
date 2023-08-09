class CreateResources < ActiveRecord::Migration[7.0]
  def change
    create_table :resources do |t|
      t.text :url
      t.string :type
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end

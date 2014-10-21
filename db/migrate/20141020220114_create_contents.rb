class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :type
      t.string :title
      t.string :subtitle
      t.string :image_key
      t.text :story
      t.boolean :featured
      t.references :group, index: true

      t.timestamps
    end
  end
end

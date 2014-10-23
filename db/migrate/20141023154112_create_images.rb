class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.binary :data
      t.string :imageable
      t.integer :imageable_id

      t.timestamps
    end
  end
end

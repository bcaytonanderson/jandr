class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :headline
      t.string :logo_key
      t.string :theme

      t.timestamps
    end
  end
end

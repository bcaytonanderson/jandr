class AddImageableType < ActiveRecord::Migration
  def change
    remove_column :images, :imageable
    add_column :images, :imageable_type, :string
  end
end

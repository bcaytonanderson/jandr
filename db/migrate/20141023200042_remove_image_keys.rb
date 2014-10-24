class RemoveImageKeys < ActiveRecord::Migration
  def change
    remove_column :contents, :image_key
    remove_column :sites, :logo_key
    remove_column :sites, :picture
  end
end

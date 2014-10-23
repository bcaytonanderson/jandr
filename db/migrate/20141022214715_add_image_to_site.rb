class AddImageToSite < ActiveRecord::Migration
  def change
    add_column :sites, :picture, :binary, limit: 2.megabytes
  end
end

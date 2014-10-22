class RemoveTypeFromContent < ActiveRecord::Migration
  def change
    remove_column :contents, :type
  end
end

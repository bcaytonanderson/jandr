class AddSideIdToGroup < ActiveRecord::Migration
  def change
    add_reference :groups, :site, index: true
  end
end

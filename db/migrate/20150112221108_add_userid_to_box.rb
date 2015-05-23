class AddUseridToBox < ActiveRecord::Migration
  def change
    add_column :boxes, :userid, :integer
  end
end

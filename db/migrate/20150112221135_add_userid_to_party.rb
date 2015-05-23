class AddUseridToParty < ActiveRecord::Migration
  def change
    add_column :parties, :userid, :integer
  end
end

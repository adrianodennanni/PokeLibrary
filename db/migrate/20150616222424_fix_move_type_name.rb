class FixMoveTypeName < ActiveRecord::Migration
  def change
    rename_column :moves, :type, :type1
  end
end

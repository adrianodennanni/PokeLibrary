class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string  :name
      t.integer :size
      t.integer :number

      t.timestamps null: false
    end
  end
end

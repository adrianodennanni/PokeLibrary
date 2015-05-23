class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :code
      t.string :name
      t.integer :spritenum
      t.integer :flingBasePower
      t.integer :gen
      t.text :description
    end
  end
end

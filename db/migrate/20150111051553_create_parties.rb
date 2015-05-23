class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string  :name
      t.text    :obs
      t.integer :number
      t.integer :pkm1
      t.integer :pkm2
      t.integer :pkm3
      t.integer :pkm4
      t.integer :pkm5
      t.integer :pkm6

      t.timestamps null: false
    end
  end
end

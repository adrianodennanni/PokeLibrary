class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.string :code
      t.string :name
      t.text :description
      t.text :shortDescription
      t.float :rating
      t.integer :num
    end
  end
end

class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :code
      t.integer :accuracy
      t.integer :basePower
      t.string :category
      t.text :description
      t.text :shortDescription
      t.string :name
      t.integer :pp
      t.integer :priority
      t.string :type
    end
  end
end

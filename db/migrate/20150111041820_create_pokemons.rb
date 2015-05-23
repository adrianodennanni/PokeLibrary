class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string  :name
      t.integer :number
      t.string  :item
      t.boolean :shiny
      t.string  :pokeball
      t.string  :nature

      t.integer :iv_atk
      t.integer :iv_spatk
      t.integer :iv_def
      t.integer :iv_spdef
      t.integer :iv_spe
      t.integer :iv_hp

      t.integer :ev_atk
      t.integer :ev_spatk
      t.integer :ev_def
      t.integer :ev_spdef
      t.integer :ev_spe
      t.integer :ev_hp

      t.integer :atk1
      t.integer :atk2
      t.integer :atk3
      t.integer :atk4


      t.integer :box_position

      t.timestamps           null: false
    end
  end
end

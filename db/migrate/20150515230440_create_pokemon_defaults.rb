class CreatePokemonDefaults < ActiveRecord::Migration
  def change
    create_table :pokemon_defaults do |t|
      t.integer :num
      t.string :code
      t.string :name
      t.string :type1
      t.string :type2
      t.string :baseSpecies
      t.string :forme
      t.float :M
      t.float :F
      t.integer :hp
      t.integer :atk
      t.integer :def
      t.integer :spa
      t.integer :spd
      t.integer :spe
      t.string :ability1
      t.string :ability2
      t.string :abilityH
      t.float :heightm
      t.float :weightkg
      t.string :color
      t.string :prevo
      t.string :evos
      t.string :eggGroup1
      t.string :eggGroup2
      t.integer :evoLevel
    end
  end
end

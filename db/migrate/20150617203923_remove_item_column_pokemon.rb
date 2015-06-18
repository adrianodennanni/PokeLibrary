class RemoveItemColumnPokemon < ActiveRecord::Migration
  def change
    remove_column :pokemons, :item
  end
end

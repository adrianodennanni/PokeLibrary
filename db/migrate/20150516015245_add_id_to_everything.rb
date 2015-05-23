class AddIdToEverything < ActiveRecord::Migration
  def change
    add_column :pokemons, :userid, :integer
    add_column :pokemons, :boxid, :integer
    add_column :pokemons, :itemid, :integer
    add_column :pokemons, :abilityid, :integer
  end
end
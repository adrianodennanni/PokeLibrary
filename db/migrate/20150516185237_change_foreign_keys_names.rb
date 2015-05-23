class ChangeForeignKeysNames < ActiveRecord::Migration
  def change
    rename_column :boxes, :userid, :user_id
    rename_column :parties, :userid, :user_id
    rename_column :pokemons, :userid, :user_id
    rename_column :pokemons, :boxid, :box_id
    rename_column :pokemons, :abilityid, :ability_id
    rename_column :pokemons, :itemid, :item_id
    rename_column :pokemons, :atk1, :move1_id
    rename_column :pokemons, :atk2, :move2_id
    rename_column :pokemons, :atk3, :move3_id
    rename_column :pokemons, :atk4, :move4_id

  end
end

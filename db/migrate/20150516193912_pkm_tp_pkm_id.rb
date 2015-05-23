class PkmTpPkmId < ActiveRecord::Migration
  def change
    rename_column :parties, :pkm1, :pkm1_id
    rename_column :parties, :pkm2, :pkm2_id
    rename_column :parties, :pkm3, :pkm3_id
    rename_column :parties, :pkm4, :pkm4_id
    rename_column :parties, :pkm5, :pkm5_id
    rename_column :parties, :pkm6, :pkm6_id
  end
end

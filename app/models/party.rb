class Party < ActiveRecord::Base
  has_one :pokemon, foreign_key: 'pkm1_id'
  has_one :pokemon, foreign_key: 'pkm2_id'
  has_one :pokemon, foreign_key: 'pkm3_id'
  has_one :pokemon, foreign_key: 'pkm4_id'
  has_one :pokemon, foreign_key: 'pkm5_id'
  has_one :pokemon, foreign_key: 'pkm6_id'
  belongs_to :user



end

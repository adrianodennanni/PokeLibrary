class Pokemon < ActiveRecord::Base
  has_one :pokemon_default
  has_one :ability
  has_one :item
  has_one :move, foreign_key: 'move1_id'
  has_one :move, foreign_key: 'move2_id'
  has_one :move, foreign_key: 'move3_id'
  has_one :move, foreign_key: 'move4_id'
  belongs_to :user
  belongs_to :box
  belongs_to :party

  validates :number, presence: true
  validates :name, presence: true


end

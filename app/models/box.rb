class Box < ActiveRecord::Base
  has_many :pokemons
  belongs_to :user
end

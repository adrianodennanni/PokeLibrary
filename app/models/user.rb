class User < ActiveRecord::Base

  has_many :boxes
  has_many :parties
  has_many :pokemons

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :omniauthable, :omniauth_providers => [:facebook]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
    end
  end


  after_create do
    (1..4).each do |i|
      @box = Box.create(user_id: self.id, name: "Box #{i}", size:30,number: i)
    end
  end

end
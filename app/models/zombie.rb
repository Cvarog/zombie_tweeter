class Zombie < ActiveRecord::Base
  attr_accessible :graveyard, :name
  has_many :tweets
  validates :name, :graveyard,  :presence => true 
end

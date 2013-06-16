class Engineer < ActiveRecord::Base
  attr_accessible :about, :location, :name, :team
  validates :name, :presence => true
  validates :team, :presence => true
  validates :about, :presence => true
  validates :location, :presence => true
end

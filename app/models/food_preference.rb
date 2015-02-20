class FoodPreference < ActiveRecord::Base
  has_one :admin
  has_many :recipes
  validates_presence_of :name
end
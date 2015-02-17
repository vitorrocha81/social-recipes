class User < ActiveRecord::Base
  validates_presence_of :name, :cidade, :email, :facebook, :twitter, :favorite_cuisine
  end

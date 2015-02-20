class Recipe < ActiveRecord::Base
  belongs_to :user
  belongs_to :cuisine
  belongs_to :food_preference
  validates_presence_of :name, :cuisine_id, :preference, :serves_people, :time_preper, :level, :ingredients, :steps, :image
  has_attached_file :image, :styles => { :large => "600x00>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
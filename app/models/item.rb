class Item < ActiveRecord::Base
  has_many :item_concepts
  has_many :concepts, :through => :item_concepts
  attr_accessible :author, :description, :email, :title, :link
end

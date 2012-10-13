class Concept < ActiveRecord::Base
  has_many :item_concepts
  has_many :items, :through => :item_concepts
  attr_accessible :name, :type
end

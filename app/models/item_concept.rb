class ItemConcept < ActiveRecord::Base
  belongs_to :item
  belongs_to :concept
  attr_accessible :item_id, :concept_id
end

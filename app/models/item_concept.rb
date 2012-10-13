class ItemConcept < ActiveRecord::Base
  belongs_to :item
  belongs_to :concept
end

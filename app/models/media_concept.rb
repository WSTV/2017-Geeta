class MediaConcept < ActiveRecord::Base
  belongs_to :media
  belongs_to :concept
end

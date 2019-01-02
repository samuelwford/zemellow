class Part < ApplicationRecord
  belongs_to :story
  
  def next_part
    Part.where(story_id: story_id, order)
  end
end

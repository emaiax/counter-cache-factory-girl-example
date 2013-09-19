class TopicsTrail < ActiveRecord::Base
  belongs_to :topic
  belongs_to :trail, counter_cache: :topics_count
end

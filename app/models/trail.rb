class Trail < ActiveRecord::Base
  validates :name, presence: true

  has_many :topics_trails
  has_many :topics, through: :topics_trails
end

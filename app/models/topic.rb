class Topic < ActiveRecord::Base
  validates :name, presence: true

  has_many :topics_trails
  has_many :trails, through: :topics_trails
end

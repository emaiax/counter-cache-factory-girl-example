require 'spec_helper'

describe TopicsTrail do
  it "works" do
    topics = [create(:topic), create(:topic)]
    trail = create(:trail, topics: topics)
    trail.reload
    expect(trail.topics_count).to eq 2
  end
end

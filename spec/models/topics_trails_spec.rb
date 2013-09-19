require 'spec_helper'

describe TopicsTrail do
  it "works using AR" do
    topics = [Topic.create(name: "first topic"), Topic.create(name: "second topic")]
    trail = Trail.create(name: "trail", topics: topics)
    trail.reload
    expect(trail.topics.size).to  eq 2 # fails
    expect(trail.topics_count).to eq 2 # fails
    expect(trail.topics.count).to eq 2 # passes
    expect(trail.topics.count).to eql trail.topics.size # fails
  end

  it "works using FG'" do
    topics = [create(:topic), create(:topic)]
    trail = create(:trail, topics: topics)
    trail.reload
    expect(trail.topics.size).to  eq 2 # fails
    expect(trail.topics_count).to eq 2 # fails
    expect(trail.topics.count).to eq 2 # passes
    expect(trail.topics.count).to eql trail.topics.size # fails
  end
end

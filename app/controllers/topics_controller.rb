class TopicsController < ApplicationController
  def index
    @topics = Topic.all.sample(3)
  end
end

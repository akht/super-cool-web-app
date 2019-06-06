class TopicsController < ApplicationController
  def index
    @topics = Topic.all.sample(1)
  end
end

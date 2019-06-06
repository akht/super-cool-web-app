class TopicsController < ApplicationController
  def index
    @topics = Topic.all.order(created_at: 'desc')
  end
end

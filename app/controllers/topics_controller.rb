class TopicsController < ApplicationController
  before_action :set_topics
	layout 'blog'
  def index
  	@topic =  Topic.all
  end

  def show
  	@topic =  Topic.find(params[:id])
  	
  	if logged_in?(:site_admin)
      @blogs = @topic.blogs.recent.page(params[:page]).per(5)
    else
      @blogs = @topic.blogs.published.recent.page(params[:page]).per(5)
    end
  end

  private
  def set_topics
    @stopics = Topic.with_blogs
  end
end

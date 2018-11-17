class PagesController < ApplicationController
  def home
  	@posts = Blog.all
  	
  	@portfolio_items = Portfolio.all
  end

  def about
  	@skills = Skill.all
  end

  def contact
  end
end

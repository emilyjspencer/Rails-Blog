class ArticlesController < ApplicationController # all controllers inherit from ApplicationController
  def new
    @article = Article.new
  end

end
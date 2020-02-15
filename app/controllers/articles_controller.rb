class ArticlesController < ApplicationController # all controllers inherit from ApplicationController
  def new
    @article = Article.new
  end

  def create
    render plain: params[:article].inspect
  end

end
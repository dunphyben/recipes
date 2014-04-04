class TagsController < ApplicationController
  def index
    @tags = Tag.all
    render('index.html.erb')
  end

  def new
    @tags = Tag.all
    @tag = Tag.new(params[:tag])
    render('new.html.erb')
  end

  def create
    @tags = Tag.all
    @tag = Tag.find(params[:id])
    @tag = Tag.new(params[:tag])
    if @tag.save
      redirect_to("/tag/<% @tag.name %>")
    else
      render('new.html.erb')
    end
  end
end





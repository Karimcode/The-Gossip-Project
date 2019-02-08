class CommentsController < ApplicationController
  def index
    @comment = Comment.all
  end

  def show
    @comment = Comment.find(param[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new()
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

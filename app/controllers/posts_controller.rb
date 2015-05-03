class PostsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  def index
    @posts = Post.all

    respond_to do |format|
      format.html { render html: @posts }
      format.json { render json: @posts }
    end
  end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render json: @post }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
end

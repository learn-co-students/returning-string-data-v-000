require 'pry'

class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def index
    @posts = Post.all
  end

  def show
# binding.pry
  @post = Post.find_by_id(params[:id])
  # @authors = Author.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    @post.save
    redirect_to post_path(@post)
  end

  def edit
  end

  def update
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  # Normally, in a RESTful action, we allow the controller to implicitly render a template with the same name as the action
  # explicitly render plain text with the :plain option

  def body
    post = Post.find(params[:id])
    render plain: post.description
  end


private
  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:title, :description)
  end
end

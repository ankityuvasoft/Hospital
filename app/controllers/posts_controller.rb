class PostsController < ApplicationController
  before_action :all_tasks, only: [:index, :create, :update,:destroy] 
  before_action :set_tasks, only: [:edit, :update, :destroy, :show]
  respond_to :html, :js
  def index
  end
  def new
    @post = Post.new
  end
  def create
    @post  = Post.create(title: params[:post][:title],content:params[:post][:content],host_id:current_host.id)
  end
  def show
  end
  def destroy
    @post.destroy
  end
  private
  def all_tasks
    @posts = Post.all
  end
  def set_tasks
    @post = Post.find(params[:id])    
  end
end

class HomeController < ApplicationController
  before_action :set_like, only: %i[ like ]
  before_action :require_user, :except => [:index]

  def index
    @posts = Post.all
    @post = Post.new
    @comment = Comment.new
  end

  def like
    @like.liked_by = "" if @like.liked_by.nil?
    respond_to do |format|
      unless @like.liked_by.include?(",#{current_user.id},")
        liked_by = @like.liked_by + ",#{current_user.id},"
        number = @like.likes + 1
        if @like.update(likes: number, liked_by: liked_by)
          format.html { redirect_to root_url, notice: "Like was successfully updated." }
          format.js
        else
          format.html { redirect_to root_url, notice: "Like was unsuccessful." }
        end
      else
        format.html { redirect_to root_url, notice: "You already liked the post" }
        format.js
        @already_liked = true
      end
    end
  end

  private

  def set_like
    @like = Post.find(params[:post_id])
  end

end

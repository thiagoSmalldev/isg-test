class Api::V1::CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :destroy]
  before_action :set_post
  before_action :set_comment, only: [:show, :update, :destroy]

  def index
    @comments = @post.comments

    render json: @comments
  end

  def show
    render json: @comment
  end

  def create
    @comment = @post.comments.build(comment_params)

    if @comment.save
      render json: @comment, status: :created
    else
      render json: { error: @comment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if @comment.update(user_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @comment.destroy

    head :no_content
  end


  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_comment
    @comment = @post.comments.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:name, :body)
  end
end
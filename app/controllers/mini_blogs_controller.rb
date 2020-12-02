class MiniBlogsController < ApplicationController
  before_action :set_blog, only: [:edit, :update, :destroy]
  def index
    @mini_blogs = MiniBlog.all
  end
  def new
    @mini_blog = MiniBlog.new
  end
  def create
    @mini_blog = MiniBlog.new(mini_blog_params)
    if params[:back]
      render :new
    else
      if @mini_blog.save
        redirect_to mini_blogs_path, notice: "ブログを作成しました！"
      else
        render :new
      end
    end
  end
  def confirm
    @mini_blog = MiniBlog.new(mini_blog_params)
    render :new if @mini_blog.invalid?
  end
  def edit
  end
  def update
    if @mini_blog.update(mini_blog_params)
      redirect_to mini_blogs_path, notice: "ブログを編集しました！"
    else
      render :edit
    end
  end
  def destroy
    @mini_blog.destroy
    redirect_to mini_blogs_path, notice:"ブログを削除しました！"
  end
  private
  def mini_blog_params
    params.require(:mini_blog).permit(:content)
  end
  def set_blog
    @mini_blog = MiniBlog.find(params[:id])
  end
end

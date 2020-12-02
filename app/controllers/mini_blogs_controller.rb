class MiniBlogsController < ApplicationController
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
  private
  def mini_blog_params
    params.require(:mini_blog).permit(:content)
  end
end

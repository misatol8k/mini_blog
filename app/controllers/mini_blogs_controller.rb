class MiniBlogsController < ApplicationController
  def index
    @mini_blogs = MiniBlog.all
  end
end

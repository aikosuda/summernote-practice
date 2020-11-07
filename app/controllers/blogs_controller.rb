class BlogsController < ApplicationController
	before_action :set_blog, only: [:show, :edit, :update, :destroy]


  def new
    @blog = Blog.new
  end

  def create
    @blog = Blogs.new(blog_params)
    tag_list = params[:blog][:name].split(/[[:blank:]]/)
    if @blog.save
      @blog.save_tag(tag_list)
      redirect_to blog_path(@blog), notice: "記事を作成しました"
    else
      render :new
    end
  end

  

  private

    def blog_params
      params.require(:blog).permit(:title, :content)
    end

    def set_blog
      @blog = Blog.find(params[:id])
    end
end

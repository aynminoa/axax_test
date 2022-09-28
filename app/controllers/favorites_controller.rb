class FavoritesController < ApplicationController
  before_action :blog_find

  def create
    favorite = current_user.favorites.create(blog_id: params[:blog_id])
    # choose_index_or_show
  end

  def destroy
    favorite = current_user.favorites.find_by(blog_id: @blog.id).destroy
    # choose_index_or_show
  end

  private

  def blog_find
    @blog = Blog.find(params[:blog_id])
  end

  # def choose_index_or_show
  #   if params[:blogs_index]
  #     redirect_to blogs_path
  #   else
  #     redirect_to blog_path(id: params[:blog_id])
  #   end
  # end

end




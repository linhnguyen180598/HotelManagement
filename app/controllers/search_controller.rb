class SearchController < ApplicationController
  def index
    if params[:query].to_s.start_with?('#')
      query  = params[:query].gsub("#", "")
      @posts = Post.joins(:hash_tags).where(hash_tags: {name: query})
    else
      @posts = Post.where("caption like ?", "%#{params[:query]}%")
    end
  end
end

class PostsController < ApplicationController
  def index
  end

  def new
    
  end

  def create
    column = (0..3).to_a.sample
    p = Post.new(:content => params[:message], :column => column, :user_id => session[:signed_in_user])
    p.save
    redirect_to :action => "index"    
  end
end

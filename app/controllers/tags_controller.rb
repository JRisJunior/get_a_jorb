class TagsController < ApplicationController
  def index
    @tags = Tag.all
    render template: "tags/index"
  end

  def new
    @tag = Tag.new
    render template: "tags/new"
    # if current_user && current_user.admin_level == true
    #   render template: "tags/new"
    # else
    #   redirect_to "/login"
    # end
  end

  def create
    if current_user && current_user.admin_level == true
      @tag = Tag.new(
        name: params[:tag][:name]
      )
      @tag.save
      redirect_to "/tags"
    else
      render html: "WHAT ARE YOU DOING HERE"
    end
  end

end

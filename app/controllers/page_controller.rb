class PageController < ApplicationController

  def show
  	@page = Page.find_by_page params[:page]
  	redirect_to '/' unless @page
  end

  def index
  	@pages = Page.page(params[:page]).per(10)
  end

end

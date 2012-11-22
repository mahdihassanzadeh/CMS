class AdminController < ApplicationController
  def index
    @total_pages = Page.count
  end
end

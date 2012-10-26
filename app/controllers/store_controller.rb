class StoreController < ApplicationController
  def index
  @pages = Page.paginate( :page=>params[:page], :order=>'created_at desc', :per_page => 2)
  end
end

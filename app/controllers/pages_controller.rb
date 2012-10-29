class PagesController < ApplicationController
  load_and_authorize_resource :page
  respond_to :html, :js
  before_filter :xhr_req

  def index

  end

  def about

  end

  def inside

  end

  def why

  end

  def order

  end

  private
  def xhr_req
    if request.xhr?
      response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
      response.headers["Pragma"] = "no-cache"
      response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GTM"
    end
  end
end

class PagesController < ApplicationController
  def index
  end

  def prelaunch
    # temporarily code everything in a single view file
    render layout: false
  end
end

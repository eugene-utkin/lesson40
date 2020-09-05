class HomeController < ApplicationController
  def index
    if params[:contact] != nil
    render plain: params[:contact].inspect
    end
  end

  def contacts
  end
end

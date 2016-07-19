class HomeController < ApplicationController

  respond_to :json
  def index
    respond_to do |format|
      format.json { render json: Restaurant.all }
      format.html
    end
  end

  def show
 	  respond_to do |format|
      format.json { render json: Restaurant.find(params[:id]) }
      format.html
    end
  end
end



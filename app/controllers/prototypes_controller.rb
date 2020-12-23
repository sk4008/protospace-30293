class PrototypesController < ApplicationController
  def index
  end

  def new
    @prototype = Prototype.new
  end

  def create
    Prototype。create（prototype_params)
  end  

  private
  def tweet_params
    params.require(:prototype).permit(:name, :image, :text)
  end
end

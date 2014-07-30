class BabyurlsController < ApplicationController
  def index

  end

  def new
  end

  def show
   @countview= Babyurl.find(params[:id]).count
   @redirectpath = Babyurl.find(params[:id]).url
    if @countview == '1'
    else
      redirect_to @redirectpath
    end
  end
  
  def create
  @babyurl = Babyurl.new(babyurl_params)
  if @babyurl.save
    redirect_to @babyurl
  else
    render 'new'
  end
end

  private
  def babyurl_params
  params.require(:babyurl).permit(:url,:count)
  end
  
end

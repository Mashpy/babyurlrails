class BabyurlsController < ApplicationController
  def index

  end

  def new
  end

  def show
    @countview= Babyurl.find(params[:id]).count
    @countloop = Babyurl.find(params[:id])
    data = []
    data << @countloop.update(
      :count => @countview.to_i + 1.to_i
       )
    @redirectpath = Babyurl.find(params[:id]).url
    if @countview.blank?
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
  params.require(:babyurl).permit(:url)
  end
  
end

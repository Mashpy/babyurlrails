class BabyurlsController < ApplicationController
  def index
  end

  def new
  end

  def show
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

class StaticpagesController < ApplicationController

  def index
    @photos = []
    flickr = Flickr.new
    if params[:user_id]
      @photos = flickr.people.getPublicPhotos(api_key: ENV['FLICKR_API_KEY'], user_id: params[:user_id] )
    end
  end
end

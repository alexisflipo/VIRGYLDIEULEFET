class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  self.page_cache_directory = -> { Rails.root.join("public", request.domain) }
  def home
    @thumbnail_imgs = ThumbnailImg.all
    @thumbnail_videos = ThumbnailVideo.all
    
  end

end

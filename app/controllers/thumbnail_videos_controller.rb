class ThumbnailVideosController < ApplicationController
    skip_before_action :authenticate_user!
    def index
    end
  
    def new
      
    end
  
    def update
      
    end
  
    def create
  
    end
  
    def destroy
      
    end
  
    private
  
    def video_params
      params.require(:thumbnail_video).permit(:video, :file)
      
    end
end
